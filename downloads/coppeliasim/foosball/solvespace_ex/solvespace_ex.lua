-- model in Solvespace 500 mm = 5000 mm in V-rep
--[[
Simulation is 10 times of realistic environment
floor in Solvespace 2.5 m x 2.5 m = 25 m x 25 m in V-rep
ball is in Solivespace 1g (0.001) = 0.01 kg in V-rep
hammer is in Solvespace 0.1 kg (100g) = 1kg in V-rep (0.1 for Inertia)
--]]

threadFunction=function()
    while true do
        -- Read the keyboard messages (make sure the focus is on the main window, scene view):
        message,auxiliaryData=sim.getSimulatorMessage()
        while message~=-1 do
            if (message==sim.message_keypress) then
                if (auxiliaryData[1]==string.byte("w")) then
                    -- up key
                    velocity=100
                    torque=200
                    hammer_back = 0
                end
                if (auxiliaryData[1]==string.byte("s")) then
                    -- down key
                     hammer_back = 1
                     torque=-200
                     velocity = -100
                end
                if (auxiliaryData[1]==string.byte("a")) then
                    -- right key
                     sliding = sliding + 0.05
sim.addStatusbarMessage('sliding:'..sliding)
                
                end
                if (auxiliaryData[1]==string.byte("d")) then
                    -- left key
                     sliding = sliding - 0.05
sim.addStatusbarMessage('sliding:'..sliding)
                end
            end
            message,auxiliaryData=sim.getSimulatorMessage()
        end
 
        -- We take care of setting the desired hammer position:
        if hammer_back == 1
            then 
               sim.setJointPosition(joint, -1, orientation)
               --sim.setObjectPosition(hammer,-1, position)
        end
        sim.setJointTargetPosition(joint, velocity)
        --sim.setJointForce(joint,torque)
        sim.setJointTargetPosition(slider, sliding)

        -- Since this script is threaded, don't waste time here:
        sim.switchThread() -- Resume the script at next simulation loop start
    end
end
-- Put some initialization code here:
-- Retrieving of some handles and setting of some initial values:
joint=sim.getObjectHandle('left_joint')
hammer=sim.getObjectHandle('left_player')
slider=sim.getObjectHandle("left_slider")
velocity=0
hammer_back=0
torque=0
sliding = 0
orientation=sim.getJointPosition(joint, -1)
position=sim.getObjectPosition(hammer,-1)
slider_position=sim.getJointPosition(slider, -1)
-- Here we execute the regular thread code:
res,err=xpcall(threadFunction,function(err) return debug.traceback(err) end)
if not res then
    sim.addStatusbarMessage('Lua runtime error: '..err)
end
 
-- Put some clean-up code here: