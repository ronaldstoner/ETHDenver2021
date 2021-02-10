#!/usr/bin/env python3
#
# ETHDenver 2021 Hackathon  
#
# Project:      Physical Digital Badge PoC
# Members:      Ron Stoner (@forwardsecrecy), Paul Pham (@cryptogoth)
#
# Changelog
# 0.1 - Initial PoC on RaspPi w/ TFT screen and static images
# 0.2 - Added static images for Sports Castle and Beer Hunt map
# 0.3 - Added wand library to generate attendee badge image
# 0.4 - Moved attendee metadata into JSON format
# 0.4.1 - Parsing QR code from attendee data JSON
# 0.5 - Added FIO code generation
# 0.6 - Added 2nd function to primay buttons (eth badge/fio badge)
# 0.7 - Added NFT parser and display function
version = '0.7'

# Imports
import subprocess
import time
import RPi.GPIO as GPIO
import qrcode
import requests
import os
from wand.color import Color
from wand.image import Image
from wand.drawing import Drawing

# Attendee data JSON
attendee = {
        "name": "Ron Stoner",
        "role": "BUIDLER", 
        "ethaddress": "0xa42ed1Ac8FB4E9Bc4fc14E1AdcEA608E1EbA874C", 
        "fioaddress": "stoner@shapeshift"
        }

# Image declerations
ethden_logo = Image(filename = '/home/pi/ETHDenver2021/assets/logo.png')
fio_logo = Image(filename = '/home/pi/ETHDenver2021/assets/fio_logo.png')

# Display bits and loop counters
badgeDisplayBit = 0	# Badge view display bit
mapDisplayBit = 0 	# Map view display bit
nft_counter = 0 	# NFT display counter
loop_counter = 0	# Main execution loop counter

# API Keys - Add your Ethplorer API key here
ethplorer_api = 'freekey'

# Load NFT file list
try:
    nft_filelist = os.listdir(r"/home/pi/ETHDenver2021/nft_images/")
except:
    print("Could not load NFT artwork from local system")

# QR Code - Generate QR codes from JSON address data 
#qr_code = Image(filename = 'assets/qr_code.png') #Uncomment for static image loading 
qr = qrcode.QRCode(
        version=None,
        box_size=10,
        border=2)
qr.add_data(attendee["ethaddress"])
qr.make(fit=True)
qr_img = qr.make_image(fill_color='purple', back_color='white')
qr_img.save('assets/qr_code.png')
qr_code = Image(filename = 'assets/qr_code.png')

# QR Code - Generate FIO QR code from JSON data
qr2 = qrcode.QRCode(
        version=None,
        box_size=10,
        border=2)
qr2.add_data(attendee["fioaddress"])
qr2.make(fit=True)
qr2_img = qr2.make_image(fill_color='blue', back_color='white')
qr2_img.save('assets/qr_code_fio.png')
qr_code_fio = Image(filename = 'assets/qr_code_fio.png')

# Get list of NFTs by address
print("Getting list of NFTs from ETH address...")
try:
    tokenList = requests.get('https://api.ethplorer.io/getAddressInfo/' + attendee['ethaddress'] + '?apiKey=' + ethplorer_api).json()
except:
    print("Could not get token list from ETH address")
#print(tokenList)

print("Pulling NFT images from token list...")
counter = 0 
for token in tokenList['tokens']:
    #if tokenList['tokens']['tokenInfo']['image']:
    #print("Retreiving " + token['tokens'][counter]['tokenInfo']['website'] + token['tokens'][counter]['tokenInfo']['image']) 
    try:
        erc20_img = requests.get(tokenList['tokens'][counter]['tokenInfo']['website'] + tokenList['tokens'][counter]['tokenInfo']['image'])
        print("Retrieved token ", counter, tokenList['tokens'][counter]['tokenInfo']['name'])
        file.open('nft_images/' + tokenList['tokens'][counter]['tokenInfo']['name'] + '.png')        
        file.write(response.bytes)
        file.close
        counter = counter + 1
    except:
        #print("Could not get token art for token ", counter)
        counter = counter + 1 
#except:
#    print("ERROR: Could not pull NFT images")
#print("Request Status:", r.status_code)
#print("Text: ", r.text())
#print("JSON: ", r.json())

# Generate ETHDenver attendee badge from attendee JSON data
with Color('DeepPink') as bg:
    with Image(width=320, height=240, background=bg) as img:
        with Drawing() as draw:
            draw.fill_color=Color('white')
            draw.text_alignment='center'
            img.font_size=30
            #Fonts
            draw.font = 'fonts/Barlow-ExtraBold.ttf'
            # Rotate and start building image
            img.rotate(90)
            draw.text(int(img.width/2), 50, attendee["name"])
            # Add in QR code - TODO: Intelligent placement on height
            qr_code.resize(125, 125)
            img.composite(qr_code, int(qr_code.width/2), 70)
            # Add in conference role
            draw.text(int(img.width/2), 235, attendee["role"])
            # Add in ETHDEN image
            ethden_logo.resize(40,40)
            img.composite(ethden_logo, (int(img.width/2)-20), 250) # Hacky
            draw(img)
            # Rotate image back for display purposes - horiz vs vert
            img.rotate(90)
        img.save(filename='assets/badge.png')

# Generate FIO badge display and QR code for FIO address from JSON data
with Color('Blue') as bg:
    with Image(width=320, height=240, background=bg) as img2:
        with Drawing() as draw:
            draw.fill_color=Color('white')
            draw.text_alignment='center'
            img2.font_size=20
            #Fonts
            draw.font = 'fonts/Barlow-ExtraBold.ttf'
            # Rotate and start building image
            img2.rotate(90)
            # Add in QR code - TODO: Intelligent placement on height
            qr_code_fio.resize(125, 125)
            img2.composite(qr_code_fio, int(qr_code_fio.width/2), 70)
            # Add in conference role
            draw.text(int(img2.width/2), 235, attendee["fioaddress"])
            # Add in FIO image
            fio_logo.resize(60,40)
            img2.composite(fio_logo, (int(img2.width/2)-30), 250) # Hacky
            draw(img2)
            # Rotate image back for display purposes - horiz vs vert
            img2.rotate(90)
        img2.save(filename='assets/fio.png')

# List of BCM channels from RPO.GPIO (printed on the Adafruit PCB next to each button)
channel_list = [17, 22, 23, 27]
backlightOn = True

# Event handler to toggle the TFT backlight
def toggleBacklight(channel):
    global backlightOn
    if backlightOn:
        backlightOn = False
        backlight.start(0)
    else:
        backlightOn = True
        backlight.start(100)

# Event handler to manage button presses
def buttonEvent(channel):
    print(channel)
    startTime = time.time()
    while GPIO.input(channel) == GPIO.LOW:
        time.sleep(0.02)
    print("Button #%d pressed for %f seconds." % (channel, time.time() - startTime))
       
# Display attendee badge
# TODO: Animations, graphics, filters, gifs?
def displayBadge(channel):    
    global badgeDisplayBit
    if badgeDisplayBit == 0:
        print("Displaying ETHDenver badge")
        #TODO: Security vuln running as root
        subprocess.call(['sudo fbi -T 2 -d /dev/fb1 -noverbose -a /home/pi/ETHDenver2021/assets/badge.png'], shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        badgeDisplayBit = 1
    else:
        print("Displaying FIO badge")
        subprocess.call(['sudo fbi -T 2 -d /dev/fb1 -noverbose -a /home/pi/ETHDenver2021/assets/fio.png'], shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        badgeDisplayBit = 0

# Display sports castle map or beer hunt map depending on bit state
# TODO: Get layout of sports castle
# TODO: Mapbox it
def displayMap(channel):
    global mapDisplayBit
    if mapDisplayBit == 0:
        #print(channel)
        print("Displaying Sports Castle map")
        #TODO: Security vuln running as root 
        subprocess.call(['sudo fbi -T 2 -d /dev/fb1 -noverbose -a /home/pi/ETHDenver2021/assets/layout.png'], shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        mapDisplayBit = 1
    else:
        #Display Beer Hunt Map identifying Colorado bars, wineries, and distilleries
        # TODO: Mapbox this
        # TODO: Get updated map
        #print(channel)
        print("Displaying Beer Hunt map")
        # TODO: Security vuln running as root 
        subprocess.call(['sudo fbi -T 2 -d /dev/fb1 -noverbose -a /home/pi/ETHDenver2021/assets/map.png'], shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        mapDisplayBit = 0

def displayNFTs(channel):
    global nft_filelist
    global nft_counter
    # TODO: Security vuln running as root
    print("Displaying NFT " + str(nft_counter) + " - " + str(nft_filelist[nft_counter]))
    subprocess.call(['sudo fbi -T 2 -d /dev/fb1 -noverbose -a /home/pi/ETHDenver2021/nft_images/' + nft_filelist[nft_counter]], shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)    
    nft_counter = nft_counter + 1
    # Check if out of bounds on array and if so reset display counter
    if nft_counter >= len(nft_filelist):
        nft_counter = 0

    #try:
        #print("NFTs")
    #nft_filelist = os.listdir(r"/home/pi/ETHDenver2021/nft_images/")
        
    #print(nft_filelist)

    #except:
        #print("Could not display NFTs")

# Event handler to manage Pi shutdown
def poweroff(channel):
    startTime = time.time()
    while GPIO.input(channel) == GPIO.LOW:
        time.sleep(0.02)
    if (time.time() - startTime) > 2:
        subprocess.call(['sudo reboot -n'], shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

# Initialize GPIO library
GPIO.setmode(GPIO.BCM)
GPIO.setup(channel_list, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.setup(18, GPIO.OUT)
backlight = GPIO.PWM(18, 1000)
backlight.start(100)

# Console output
print("Button #17 (button 1) displays the attendee badge / FIO address")
print("Button #22 (button 2) displays Sports Castle map / CO Beer Hunt map")
print("Button #23 (button 3) displays NFT tokens")
print("Button #27 (button 3) exits.")

# Button event listeners and callbacks
GPIO.add_event_detect(17, GPIO.FALLING, callback=displayBadge, bouncetime=200)
GPIO.add_event_detect(22, GPIO.FALLING, callback=displayMap, bouncetime=200)
GPIO.add_event_detect(23, GPIO.FALLING, callback=displayNFTs, bouncetime=200)
#GPIO.add_event_detect(27, GPIO.FALLING, callback=poweroff, bouncetime=200)

# Display default main screen (ETHBadge)
displayBadge(17)

# Looping for exit signal
try:
    time.sleep(0.1)
    loop_counter = loop_counter + 1 
    if loop_counter >= 10:
        displayNFTs()
        loop_counter = 0
    GPIO.wait_for_edge(27, GPIO.FALLING)
    print("Exit button pressed.")

except:
    time.sleep(0.1)
    loop_counter = loop_counter + 1 
    print(loop_counter)
    if loop_counter >= 10:
        displayNFTs()
        loop_counter = 0
    pass

# Exit gracefully
backlight.stop()
GPIO.cleanup()
