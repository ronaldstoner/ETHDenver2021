#!/usr/bin/env python3
#
# ETHDenver 2021 Hackathon  
#
# Project:      Physical Digital Badge PoC
# Members:      Ron Stoner (@forwardsecrecy)
#
# Changelog
# 0.1 - Initial PoC on RaspPi w/ TFT screen and static images
# 0.2 - Added static images for Sports Castle and Beer Hunt map
# 0.3 - Added wand library to generate attendee badge image
# 0.4 - Moved attendee metadata into JSON format

version = '0.4'

# Imports
import subprocess
import time
import RPi.GPIO as GPIO
from wand.color import Color
from wand.image import Image
from wand.drawing import Drawing

# Attendee data JSON
attendee = {
        "name": "Ron Stoner",
        "role": "BUIDLER", 
        "ethaddress": "", 
        }

# QR Code
qr_code = Image(filename = 'assets/qr_code.png')
ethden_logo = Image(filename = 'assets/logo.png')

# Generate attendee badge from attendee JSON data
with Color('DeepPink') as bg:
    with Image(width=320, height=240, background=bg) as img:
        with Drawing() as draw:
            draw.fill_color=Color('white')
            draw.text_alignment='center'
            img.font_size=30
            # Rotate and start building image
            img.rotate(90)
            draw.text(int(img.width/2), 50, attendee["name"])
            # Add in QR code - TODO: Intelligent placement on height
            # TODO: Generate using a QR code library
            qr_code.resize(125, 125)
            img.composite(qr_code, int(qr_code.width/2), 70)
            # Add in conference role
            draw.text(int(img.width/2), 240, attendee["role"])
            # Add in ETHDEN image
            ethden_logo.resize(40,40)
            img.composite(ethden_logo, (int(img.width/2)-20), 260) # Hacky
            draw(img)
            # Rotate image back for display purposes - horiz vs vert
            img.rotate(90)
        img.save(filename='assets/badge.png')

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
# TODO: Animations, grpahics, filters, gifs?
def displayBadge(channel):
    print(channel)
    print("Displaying attendee badge")
    #TODO: Security vuln running as root
    subprocess.call(['sudo fbi -T 2 -d /dev/fb1 -noverbose -a /home/pi/ETHDenver2021/assets/badge.png'], shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    
# Display sports castle map 
# TODO: Get layout of sports castle
# TODO: Mapbox it
def displayMap(channel):
    print(channel)
    print("Displaying castle map")
    #TODO: Security vuln running as root 
    subprocess.call(['sudo fbi -T 2 -d /dev/fb1 -noverbose -a /home/pi/ETHDenver2021/assets/layout.png'], shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

# Display map of Colorado indentifying bars, wineries, distilleries
# TODO: Mapbox
# TODO: Compile list of location data
# TODO: Generate markers based off location data
# TODO: Load map tile data
def displayBeerHunt(channel):
    print(channel)
    print("Displaying Beer Hunt Map")
    # TODO: Security vuln running as root 
    subprocess.call(['sudo fbi -T 2 -d /dev/fb1 -noverbose -a /home/pi/ETHDenver2021/assets/map.png'], shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    
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
print("Button #17 (button 1) displays the attendee badge")
print("Button #22 (button 2) displays Sports Castle map")
print("Button #23 (button 3) displays Beer Hunt map")
print("Button #27 (button 3) exits.")

# Button event listeners and callbacks
GPIO.add_event_detect(17, GPIO.FALLING, callback=displayBadge, bouncetime=200)
GPIO.add_event_detect(22, GPIO.FALLING, callback=displayMap, bouncetime=200)
GPIO.add_event_detect(23, GPIO.FALLING, callback=displayBeerHunt, bouncetime=200)
#GPIO.add_event_detect(27, GPIO.FALLING, callback=poweroff, bouncetime=200)

# Looping for exit signal
try:
    GPIO.wait_for_edge(27, GPIO.FALLING)
    print("Exit button pressed.")

except:
    pass

# Exit gracefully
backlight.stop()
GPIO.cleanup()
