local tilt = 5

function onBeatHit()
    if curBeat % 2 == 0 then
        tilt = - tilt
        setProperty('camHUD.angle', tilt)
        setProperty('camGame.angle', tilt)
        doTweenAngle('camHUDTilt', 'camHUD', 0, 0.5,'circOut')
        doTweenAngle('camGameTilt', 'camGame', 0, 0.5,'circOut')
    end
end
