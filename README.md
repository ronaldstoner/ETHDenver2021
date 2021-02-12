# ETHDenver 2021 - Attendee Hardware Badge

Conferences and hackathons have been creating custom hardware based badges for attendees to use, hackers to hack on, gamers to game on, and businesses to integrate with.
 
Why not ETHDenver?

TeamBadge set out a mission during this hackathon in order to create an open source attendee hardware badge for the ETHDenver conference. While the designs and code are very much hackathon quality level, we have duplicated existing analog conference badge functionality (attendee name, role, and QR code). Going past our initial MVP goal, we added additional functionality including a FIO address view, map of the conference floor, regional maps, and advertisement cards for local businesses. 

## TeamBadge
Ronald Stoner - @ronaldstoner (GitHub) / @forwardsecrecy (Twitter)  
Paul Pham - @cryptogoth (GitHub)

## Hackathon Links
Github - https://github.com/ronaldstoner/ETHDenver2021  
Presentation - https://docs.google.com/presentation/d/1lKfAteGLD9OGmtw0hz3KvVq7pTEihyAI2j_oX4J-8Pw/edit?usp=sharing  
Demo Video -    
PCB Silkscreen -   

## Prototype
The prototype was designed over the course of a few days by TeamBadge using the following hardware:
 - Raspberry Pi 
 - Pi WiFi dongle (optional, but required for online mode)
 - Adafruit TFT 2.3inch 320x240 Touch Screen
 - 4 Physical touch buttons
 - External battery pack
 
## Tech Stack
- Python3
- Wand Image library
- FIO addresses
- Adafruit TFT display and drivers

# Features
## Attendee Badge View

  -  Programatically generated from attendee JSON data
  - Can be scripted to run in batches and pre-loaded to badges -OR-
  - Generate badge attendee data and image on the fly

## FIO Address View

  - FIO integration bounty
  - Can be scripted to run in batches and pre-loaded to badges -OR-
  - Generate badge attendee data and image on the fly

## Sports Castle Floor Map

  - Opportunities for heat mapping (online only mode)
  - Track which exhibits are popular
  - Bathroom wait estimated timer
  - Regional Map
  - ColoradoJam Department of Agriculture bounty
  - Load map tiles based on city, county, or state (very large)
  - Local Business Advertisement
  - Sponsorships
  - NFT hunt

## PCB Silkscreen Proof of Concept
While the prototyping phase took place on a Raspberry Pi, the ultimate end goal is to produce and fabricate a custom PCB hardware badge design for ETHDenver. Unfortunately due to the length of the hackathon we were not able to fabricate a physical badge, but did want to provide a silkscreen proof of concept and images to convey what a physical badge may look like.


## Future Features 
- Scaling down [Hardware]
	- ESP32 / Arduino
	- Smaller operating system footprint
	- Smaller battery due to smaller components and resource usage
	- Better component tracing and layout
	
- Scaling Up [Software]
	- Badge Check In
	- Heat Mapping (online mode and voluntary only)
	- Badge Tracking (online mode and voluntary only)
	- Conference Daily Announcements Push System (online mode online and requires an on site daily check in network and system)
	- More bling! [LEDs]
	- Easter eggs!
