function onBeatHit()
    if curBeat % 4 == 0 then
        cameraShake('game', 0.002, 0.2)
	    cameraShake('hud', 0.002, 0.2)
    end
end
