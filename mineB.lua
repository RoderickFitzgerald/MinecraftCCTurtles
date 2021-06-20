FlipAtPoint = 128;
ResetMineLoop = 0;
StepsTaken = 0;
StepsToPlaceTorch = 0;
LongDistance = false;
FlipDirection = false;
while (turtle.getFuelLevel() > 0)
do
	while (StepsTaken < 64)
	do
		while (FlipAtPoint > ResetMineLoop)
		do
			if StepsToPlaceTorch == 12 then
				turtle.select(2)
				turtle.digDown()
				turtle.placeDown()
				StepsToPlaceTorch = 0;
			end
			turtle.dig()
			while not turtle.forward()
			do
				turtle.dig()
				sleep(0.15)
			end
			turtle.digUp()
			turtle.digDown()
			StepsTaken = StepsTaken + 1;
			ResetMineLoop = ResetMineLoop + 1;
			StepsToPlaceTorch = StepsToPlaceTorch + 1;
			print("Stepped: ", ResetMineLoop)
		end

		if LongDistance == true then
			if Flipper == true then
				turtle.turnLeft()
				turtle.dig()
				while not turtle.forward()
				do
					turtle.dig()
					sleep(0.15)
				end
				turtle.digUp()
				turtle.digDown()
				turtle.turnLeft()
				Flipper = false;
				print("Now facing the original direction.")
				LongDistance = false;

			else
				turtle.turnRight()
				turtle.dig()
				while not turtle.forward()
				do
					turtle.dig()
					sleep(0.15)
				end
				turtle.digUp()
				turtle.digDown()
				turtle.turnRight()
				Flipper = true;
				print("Now facing the opposite direction.")
				LongDistance = false;
			end
		else
			LongDistance = true;
		end

	ResetMineLoop = 0;
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
end
print(turtle.getFuelLevel())