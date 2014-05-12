
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
myEye2.y =  display.contentCenterY * 1.1 
myEye2:setFillColor(1,1,1,1) 
--transition.blink(myEye, {time=4000})

local myBlueEye2 = display.newCircle (200, 200, eyeWidth2*.25)
myBlueEye2.x = myEye2.x--display.contentWidth * .5 
myBlueEye2.y = myEye2.y -- display.contentCenterY * 1.1
myBlueEye2:setFillColor(.5,.4,1)
--transition.blink(myBlueEye, {time=4000})

local myPupilEye2 = display.newCircle (200, 200, eyeWidt2h*.12)
myPupilEye2.x = myEye2.x --display.contentWidth * .5 
myPupilEye2.y = myEye2.y -- display.contentCenterY * 1.1
myPupilEye:setFillColor(0,1)
--transition.blink(myPupilEye, {time=4000})

myEyeLayers2:insert(myEye2)

local background = myClosedEye2 
local myClosedEye2 = display.newCircle( 200, 200, eyeWidth2*.5)
myClosedEye2.x = display.contentWidth * .2--.8--.5 
myClosedEye2.y = display.contentCenterY * 1.1 
myClosedEye2:setFillColor(.55,.27,.2,1)--(139,0,.3) 
transition.blink(myClosedEye2, {time=7000}) -- the average person blinks 12 times per minute.