local tilt = 5

function onUpdate()
    if mustHitSection == false then
        tilt = -5
    end
    if mustHitSection == true then
        tilt = 5
    end
end

function onStepHit()
    if curBeat >= 192 and curBeat <= 704 then
        if curStep % 8 == 2 then
            setProperty('camHUD.angle', tilt)
            setProperty('camGame.angle', tilt)
            setProperty('camHUD.x', tilt*10)
            setProperty('camGame.x', tilt*10)
            setProperty('camHUD.zoom', 1.2)
            doTweenZoom('camHUDZoom', 'camHUD', 1, 0.5, 'circOut')
            doTweenAngle('camHUDTilt', 'camHUD', 0, 0.5,'circOut')
            doTweenAngle('camGameTilt', 'camGame', 0, 0.5,'circOut')
            doTweenX('camHUDX', 'camHUD', 0, 0.5,'circOut')
            doTweenX('camGameX', 'camGame', 0, 0.5,'circOut')
        end
    end
end
