PathA = 0 --- How far the turtle walks before turning around.
PathB = 0 --- How far the turtle has moved before the floor is complete.
PathC = 0 --- How far the turtle has moved downwards in total.
Flip = false

while (PathC < 15)
	do
		while (PathB < 255)
			do
				while (PathA < 16)
					do
						-- The turtle's main loop. PathA
						turtle.dig()
						while not turtle.forward() do
							turtle.dig()
							sleep(0.15)
						end
						turtle.digDown()
						PathA = PathA + 1
						PathB = PathB + 1
						print(PathB, " steps taken so far.")
					end
				-- The turtle has moved it's first row and now it needs to be reset. PathB
				turtle.digUp()
				turtle.placeUp()
				for i = 2,16
				do
					turtle.select(i)
					turtle.dropUp()
				end
				turtle.select(1)
				turtle.digUp()
				PathA = 0
				if (Flip == false) then
					turtle.turnLeft()
					turtle.dig()
					while not turtle.forward() do
						turtle.dig()
						sleep(0.15)
					end
					turtle.digDown()
					turtle.turnLeft()
					Flip = true
				else
					turtle.turnRight()
					turtle.dig()
					while not turtle.forward() do
						turtle.dig()
						sleep(0.15)
					end
					turtle.digDown()
					turtle.turnRight()
					Flip = false
				end
			end
		-- The turtle has finished mining it's current floor. It's resetting the floor loop. Moving in the opposite direction as originally made. PathC
		Flip = not Flip
		turtle.digDown()
		turtle.down()
		PathC = PathC + 1 -- Noting that the turtle has moved down a floor.
		print("The PathC Has been increased.")
		PathA = 0 -- Restarting the turtle.
		PathB = 0 
	end