function elDetectoFront()
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

function elDetectoUp()	
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

function elDetectoDown()
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







function main()


	while(elDetectoFront() or elDetectoUp() or elDetectoDown()) do
	
		if(elDetectoFront()) then
		turtle.dig()
		turtle.forward()
		
		elseif(elDetectoUp()) then
		turtle.digUp()
		turtle.up()
		
		elseif(elDetectoDown()) then
		turtle.digDown()
		turtle.down()
		end
		
	end
	
end

turtle.dig()
turtle.forward()
main()