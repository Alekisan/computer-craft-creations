heightCount = 0
-- detect if target block matches desired block
function matchFront()
local dFront = false

	if(turtle.detect())
	then
		if (turtle.compare())
		then
		dFront = true
		else
		dFront = false
		end	
	end
	
	return dFront
end

function matchUp()	
local dUp = false

	if(turtle.detectUp())
	then
	    if(turtle.compareUp())
	    then
		dUp = true
		else
		dUp = false
		end
	end
	
	return dUp
end

function matchDown()
local dDown = false
	
	if(turtle.detectDown())
	then
	    if(turtle.compareDown())
	    then
		dDown = true
		else
		dDown = false
		end
	end	
	
	return dDown
end
-- end comparisons

-- initialize
function init()

    if(turtle.detect()) then
    turtle.dig()
    turtle.forward()
    
    elseif(turtle.detectUp()) then
    turtle.digUp()
    turtle.up()
    heightCount = heightCount + 1
    
    elseif(turtle.detectDown()) then
    turtle.digDown()
    turtle.down()
    heightCount = heightCount - 1
    
    end
end
-- end init


function main()

init()

	while(matchFront() or matchUp() or matchDown()) do
	
		if(matchFront()) then
		turtle.dig()
		turtle.forward()
		
		elseif(matchUp()) then
		turtle.digUp()
		turtle.up()
		heightCount = heightCount + 1
		
		elseif(matchDown()) then
		turtle.digDown()
		turtle.down()
		heightCount = heightCount - 1
		end
		
	end
	
	while(heightCount ~= 0) do
	
		if(heightCount > 0) then
			turtle.down()
			heightCount = heightCount - 1
		end
		
		if(heightCount < 0) then
			turtle.up()
			heightCount = heightCount + 1
		end
		
	end
	
end

main()