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

function diggy(x)		
	
	if(x == 1) then
	turtle.dig()
	turtle.forward()
	end
	
	if(x == 2) then
	turtle.digUp()
	turtle.up()
	heightCount = heightCount + 1
	end
	
	if(x == 3) then
	turtle.digDown()
	turtle.down()
	heightCount = heightCount - 1
	end	

end


function main()

init()
	
   while(matchFront() or matchUp() or matchDown()) do
   local a = 0
   
	   while(matchFront() or a < 4) do
	   diggy(1)
		   if(matchFront() == false) then
		   turtle.turnRight()
		   a = a + 1
		   end	   
	   end
	   
	   if(matchFront() == false and matchUp()) then
	   diggy(2)
	   end
	   
	   if(matchFront() == false and matchDown()) then
	   diggy(3)
	   end
   
   end		

	
end

main()
