totalToMine = 50;
Retainer = 0;
Flipper = false;
StepsTaken = 0;
StepsTakenT = 0;
while (turtle.getFuelLevel() > 0)
do
	while (StepsTaken < 128)
	do
		while (totalToMine > Retainer)
		do 
			if StepsTakenT == 12 then
				turtle.select(2)
				turtle.digDown()
				turtle.placeDown()
				StepsTakenT = 0;
				print("TorchPlaced")
 			end
			turtle.dig()
			turtle.forward()
			turtle.digUp()
			turtle.digDown()
			Retainer = Retainer + 1;
			StepsTaken = StepsTaken + 1;
			StepsTakenT = StepsTakenT + 1;
			print("CycleWalkComplete")
		end
	
	if Flipper == true then
		turtle.turnLeft()
		turtle.dig()
		turtle.forward()
		turtle.digUp()
		turtle.digDown()
		turtle.turnLeft()
		Flipper = false;
		print("Flipper True")
	
	else
		turtle.turnRight()
		turtle.dig()
		turtle.forward()
		turtle.digUp()
		turtle.digDown()
		turtle.turnRight()
		Flipper = true;
		print("Flipper False")
		end 

	Retainer = 0;
	print("Retainer 0")
	end
	
turtle.select(1)
turtle.digDown()
turtle.placeDown()
print("ChestPlaced")
for i=3,16
do
	turtle.select(i)
	turtle.dropDown()
	print("Item placeDown")
end
turtle.dig()
turtle.forward()
print("ResetSteps")
StepsTaken = 0;
end	
print(turtle.getFuelLevel())
