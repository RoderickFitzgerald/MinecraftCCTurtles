StepsForThisLayer = 0;
SecondFlipPoint = 0;
ResetMineLoop = 0;
StepsTaken = 0;
LongDistance = false;
FlipDirection = false;
Flipper = true;
while (turtle.getFuelLevel() > 0)
do
	while (SecondFlipPoint < 256)
	do
		while (StepsTaken < 16)
		do
			while (16 > ResetMineLoop)
			do
				turtle.dig()
				while not turtle.forward()
				do
					turtle.dig()
					sleep(0.15)
				end
				turtle.digDown()
				StepsTaken = StepsTaken + 1;
				ResetMineLoop = ResetMineLoop + 1;
				SecondFlipPoint = SecondFlipPoint + 1;
				print("Stepped: ", ResetMineLoop)
			end

			if Flipper == true then
				turtle.turnLeft()
				turtle.dig()
				while not turtle.forward()
				do
					turtle.dig()
					sleep(0.15)
				end
				turtle.digDown()
				turtle.turnLeft()
				Flipper = false;
				print("Now facing the original direction.")	

			else
				turtle.turnRight()
				turtle.dig()
				while not turtle.forward()
				do
					turtle.dig()
					sleep(0.15)
				end
				turtle.digDown()
				turtle.turnRight()
				Flipper = true;
				print("Now facing the opposite direction.")
			end
		turtle.select(1)
		turtle.digUp()
		turtle.placeUp()
		for i = 3,16
		do
			turtle.select(i)
			turtle.dropUp()
		end
		turtle.select(1)
		turtle.digUp()
		StepsTaken = 0;
		ResetMineLoop = 0;
		end
	turtle.turnLeft()
	turtle.turnLeft()
	turtle.down()
	end


end
print(turtle.getFuelLevel())