-- app displays number of times a person blinks per minute (approx 12 times per miute) 
-- app to show concentration, books (gradschool life, etc.)
-- IDEALLY i'd like it to randomly blink at different speeds, but still 12 times a minute

-- Books and computers fall down and bounce off lips. 
--Most people notice how much you talk, but not how much you blink/how much you read/erc.

-- I used some of the physics code from Effat's blog posting -- this was helpful

local physics = require("physics")
display.setStatusBar( display.HiddenStatusBar )
local screenWidth = display.contentWidth
local screenHeight = display.contentHeight
local screenCenterX = display.contentCenterX
local screenCenterY = display.contentCenterY

local background = display.newRect( 0, 0, screenWidth, screenHeight ) 
background:setFillColor(.55,.27,.2,1) 
background.x = screenCenterX -- center background
background.y = screenCenterY -- center background

physics.start( )
physics.setGravity( gx, gy )

--Source for top lips, nose and eyebrows: http://www.clker.com/
-- Eyes constructed via lua code

local myLips = display.newImage( "blacklips.png") 
myLips.x = display.contentCenterX 
myLips.y = display.contentCenterY * 2.05
physics.addBody( myLips, "static")

local myNose = display.newImage( "nosenew.png") 
myNose.x = display.contentCenterX 
myNose.y = display.contentCenterY * 1.3

local myBrows = display.newImage ( "eyebrow.png" )
myBrows.x = display.contentWidth *.43
myBrows.y =  display.contentCenterY * .25

myEyeLayers = display.newGroup( )
local eyeHeight = screenHeight * 0.5 
local eyeWidth = screenWidth *.5 
print( "eye: " .. eyeWidth .. " x " .. eyeHeight ) 
local eyeBlueHeight = screenHeight * 0.25
local eyeBlueWidth = screenWidth * 0.25 
local eyePupilHeight = screenHeight * 0.12
local eyePupilWidth = screenWidth * 0.12 

local myEye = display.newCircle ( 200, 200, eyeWidth*.5 )
myEye.x = display.contentWidth * .8--.5
myEye.y =  display.contentCenterY * .7
myEye:setFillColor(1,1,1,1) 
--transition.blink(myEye, {time=4000})
--local myLashes = display.newImage( "eyelashes.png") -- grass under/behind building
--myLashes.x = display.contentCenterX * .6
--myLashes.y = display.contentCenterY * .3

local myBlueEye = display.newCircle (200, 200, eyeWidth*.25)
myBlueEye.x = myEye.x--display.contentWidth * .5 
myBlueEye.y = myEye.y -- display.contentCenterY * 1.1
myBlueEye:setFillColor(.5,.4,1)
--transition.blink(myBlueEye, {time=4000})

local myPupilEye = display.newCircle (200, 200, eyeWidth*.12)
myPupilEye.x = myEye.x --display.contentWidth * .5 
myPupilEye.y = myEye.y -- display.contentCenterY * 1.1
myPupilEye:setFillColor(0,1)
--transition.blink(myPupilEye, {time=4000})

myEyeLayers:insert(myEye)

local background = myClosedEye 
local myClosedEye = display.newCircle( 200, 200, eyeWidth*.5)
myClosedEye.x = display.contentWidth * .8--.5 
myClosedEye.y = display.contentCenterY * .7
myClosedEye:setFillColor(.55,.27,.2,1)--(139,0,.3) 
transition.blink(myClosedEye, {time=7000}) -- the average person blinks 12 times per minute.

myEyeLayers2 = display.newGroup( )
local eyeHeight2 = screenHeight * 0.5 
local eyeWidth2 = screenWidth *.5 
print( "eye: " .. eyeWidth .. " x " .. eyeHeight ) 
local eyeBlueHeight2 = screenHeight * 0.25
local eyeBlueWidth2 = screenWidth * 0.25 
local eyePupilHeight2 = screenHeight * 0.12
local eyePupilWidth2 = screenWidth * 0.12 

local myEye2 = display.newCircle ( 200, 200, eyeWidth2*.5 )
myEye2.x = display.contentWidth * .2--.8--.5
myEye2.y =  display.contentCenterY * .7
myEye2:setFillColor(1,1,1,1) 

local myBlueEye2 = display.newCircle (200, 200, eyeWidth2*.25)
myBlueEye2.x = myEye2.x--display.contentWidth * .5 
myBlueEye2.y = myEye2.y -- display.contentCenterY * 1.1
myBlueEye2:setFillColor(.5,.4,1)

local myPupilEye2 = display.newCircle (200, 200, eyeWidth2*.12)
myPupilEye2.x = myEye2.x  
myPupilEye2.y = myEye2.y 
myPupilEye2:setFillColor(0,1)

myEyeLayers2:insert(myEye2)

local background = myClosedEye2 
local myClosedEye2 = display.newCircle( 200, 200, eyeWidth2*.5)
myClosedEye2.x = display.contentWidth * .2
myClosedEye2.y = display.contentCenterY * .7 
myClosedEye2:setFillColor(.55,.27,.2,1)
transition.blink(myClosedEye2, {time=7000}) -- the average person blinks 12 times per minute.

physics.setGravity( gx, gy ) -- books fall and bounce off mouth, the videos and code Effat posted on the course blog were super helpful with this! 
physics.setAverageCollisionPositions( true )
local book = display.newImage( "bookyellow.png")
book.x = screenCenterX 
physics.addBody( book, {bounce = 0.2})

local bookBlue = display.newImage( "blueyellowbook.png")
bookBlue.x = screenCenterX / 3
physics.addBody( bookBlue, {bounce = 0.8})

local bookOpen = display.newImage( "openbook.svg.thumb.png")
bookOpen.x = screenCenterX / 2
physics.addBody( bookOpen, {bounce = 0.6})

local laptop = display.newImage( "laptop.svg.thumb.png")
laptop.x = screenCenterX * 1.5
physics.addBody( laptop, {bounce = 0.2})

local bookOpen2 = display.newImage( "openbook.svg.thumb.png")
bookOpen2.x = screenCenterX / .7
physics.addBody( bookOpen2, {bounce = 0.9})

local laptop2 = display.newImage( "laptop.svg.thumb.png")
laptop2.x = screenCenterX /.7
physics.addBody( laptop2, {bounce = 0.4})

local blueBook2 = display.newImage( "blueyellowbook.png")
blueBook2.x = screenCenterX / 2
physics.addBody( blueBook2, {bounce = 1.2})

local book2 = display.newImage( "bookyellow.png")
book2.x = screenCenterX / 2
physics.addBody( book2, {bounce = 2})

