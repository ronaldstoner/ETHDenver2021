#!/usr/bin/env python3
#
# ETHDenver 2021 Hackathon  
#
# Project:      Physical Digital Badge PoC
# Members:      Ron Stoner (@forwardsecrecy)
#
import subprocess
import time
import RPi.GPIO as GPIO

# list of BCM channels from RPO.GPIO (printed on the Adafruit PCB next to each button)
channel_list = [17, 22, 23, 27]
backlightOn = True

# event handler to toggle the TFT backlight
def toggleBacklight(channel):
    global backlightOn
    if backlightOn:
        backlightOn = False
        backlight.start(0)
    else:
        backlightOn = True
        backlight.start(100)

# event handler to manage button presses
def buttonEvent(channel):
    print(channel)
    startTime = time.time()
    while GPIO.input(channel) == GPIO.LOW:
        time.sleep(0.02)
    print("Button #%d pressed for %f seconds." % (channel, time.time() - startTime))
       
# Display attendee badge
# TODO: Parse data from JSON and generate image (ImageMagick?)
# TODO: Animations, grpahics, filters, gifs?
def displayBadge(channel):
    print(channel)
    print("Displaying attendee badge")
    subprocess.call(['sudo fbi -T 2 -d /dev/fb1 -noverbose -a /home/pi/ETHDenver2021/assets/badge.png'], shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    
# Display sports castle map 
# TODO: Get layout of sports castle
# TODO: Mapbox it
def displayMap(channel):
    print(channel)
    print("Displaying castle map")
    subprocess.call(['sudo fbi -T 2 -d /dev/fb1 -noverbose -a /home/pi/ETHDenver2021/assets/layout.png'], shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

# Display map of Colorado indentifying bars, wineries, distilleries
# TODO: Mapbox
# TODO: Compile list of location data
# TODO: Generate markers based off location data
# TODO: Load map tile data
def displayBeerHunt(channel):
    print(channel)
    print("Displaying Beer Hunt Map")
    subprocess.call(['sudo fbi -T 2 -d /dev/fb1 -noverbose -a /home/pi/ETHDenver2021/assets/map.png'], shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    
# event handler to manage Pi shutdown
def poweroff(channel):
    startTime = time.time()
    while GPIO.input(channel) == GPIO.LOW:
        time.sleep(0.02)
    if (time.time() - startTime) > 2:
        subprocess.call(['sudo reboot -n'], shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

# initialize GPIO library
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

# exit gracefully
backlight.stop()
GPIO.cleanup()
