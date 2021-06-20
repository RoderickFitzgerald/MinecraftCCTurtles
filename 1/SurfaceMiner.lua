PathA = 0 --- How far the turtle walks before turning around.
PathB = 0 --- How far the turtle has moved before the floor is complete.
PathC = 0 --- How far the turtle has moved downwards in total.
PathT = 0 -- How long before the turtle places a torch.
Flip = false

while (PathC < 15)
	do
		while (PathB < 512)
			do
				while (PathA < 32)
					do
						while (PathT < 12)
							do
							-- The turtle's main loop. PathA
							turtle.dig()
							while not turtle.forward() do
								turtle.dig()
								sleep(0.15)
							end
							turtle.digDown()
							turtle.digUp()
							PathA = PathA + 1
							PathB = PathB + 1
							PathT = PathT + 1
							print(PathB, " steps taken so far.")
						end
						-- Places the torch down and resets the loop to continue
						turtle.select(2)
						turtle.placeDown()
						turtle.select(1)
						PathT = 0
					end
				-- The turtle has moved it's first row and now it needs to be reset. PathB
				turtle.digUp()
				turtle.placeUp()
				for i = 3,16
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
		--Flip = not Flip
		--turtle.digDown()
		--turtle.down()
		turtle.turnLeft()
		PathC = PathC + 1 -- Noting that the turtle has moved down a floor.
		print("The PathC Has been increased.")
		PathA = 0 -- Restarting the turtle.
		PathB = 0 
	end