local uwu = 0.015
local owo = 0.5
local owo2 = 0.5

function onCreate()
    runTimer('start', 0.5)
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'start' then
        doTweenAlpha('alpha1', 'deadly', owo, 0.5);
        runTimer('end', 0.5)
    end
    if tag == 'end' then
        doTweenAlpha('alpha1', 'deadly', owo2, 0.5);
        runTimer('start', 0.5)
    end
end

function onUpdate()
    songPos = getSongPosition()
    local currentBeat = (songPos/100)/(curBpm/170)
    currentBeat2 = (songPos / 1000) * (bpm / 170)

    setProperty('iconP1.alpha', getProperty('health')/2)
    setProperty('healthBar.alpha', 0)
    setProperty('bar.alpha', 0)
    if getProperty('health') > 1.5 then
        owo = 0.1
        owo2 = 0.4
    end
    if getProperty('health') <= 1.5 and getProperty('health') > 1 then
        owo = 0.4
        owo2 = 0.7
    end
    if getProperty('health') <= 1 then
        owo = 0.7
        owo2 = 1
    end
    if getProperty('health') > 1.5 then
        doTweenAlpha('alphap', 'iconP2', 0.2, 0.5);
    end
    if getProperty('health') > 1 and getProperty('health') <= 1.5 then
        doTweenAlpha('alphap', 'iconP2', 0.4, 0.5);
    end
    if getProperty('health') <= 1 and getProperty('health') > 0.75 then
        doTweenAlpha('alphap', 'iconP2', 0.6, 0.5);
    end
    if getProperty('health') <= 0.75 and getProperty('health') > 0.5 then
        doTweenAlpha('alphap', 'iconP2', 0.8, 0.5);
    end
    if getProperty('health') <= 0.5 then
        doTweenAlpha('alphap', 'iconP2', 1, 0.5);
    end
    if downscroll == false then
        if hudAngle then
            setProperty('camGame.angle',0 - -6 * math.cos((currentBeat2*0.7)*math.pi) )
            setProperty('camHUD.angle',0 - -6 * math.cos((currentBeat2*0.9)*math.pi) )
            function onBeatHit()
                setProperty('camHUD.zoom', 1.2)
                doTweenZoom('HUDZoom', 'camGHUD', 1, crochet*5000, 'circIn')
            end
        end
        if hudAngleStronk then
            setProperty('camGame.angle',0 - -12.5 * math.cos((currentBeat2*0.7)*math.pi) )
            setProperty('camHUD.angle',0 - -18 * math.cos((currentBeat2*0.9)*math.pi) )
            setProperty('camHUD.zoom', 1.4)
            doTweenZoom('HUDZoom', 'camGHUD', 1, crochet*5000, 'circIn')
        end
        if shakeHUD then
            setProperty('camGame.x',0 - 10 * math.cos((currentBeat2*20.5)*math.pi) )
            setProperty('camHUD.x',0 - 10 * math.cos((currentBeat2*20.1)*math.pi) )
        end
        if funniMove then
            noteTweenX('defaultPlayerStrumX4', 4, 420 + (math.sin(currentBeat) * 150), 0.001)
            noteTweenX('defaultPlayerStrumX5', 5, 530 + (math.sin(currentBeat) * 150), 0.001)
            noteTweenX('defaultPlayerStrumX6', 6, 640 + (math.sin(currentBeat) * 150), 0.001)
            noteTweenX('defaultPlayerStrumX7', 7, 750 + (math.sin(currentBeat) * 150), 0.001)
            noteTweenY('defaultPlayerStrumY4', 4, 50 + (math.cos(currentBeat) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY5', 5, 50 + (math.cos(currentBeat) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY6', 6, 50 + (math.cos(currentBeat) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY7', 7, 50 + (math.cos(currentBeat)  * -25), 0.001)
            noteTweenX('defaultPlayerStrumX0', 0, 420 + (math.sin(currentBeat) * 150), 0.001)
            noteTweenX('defaultPlayerStrumX1', 1, 530 + (math.sin(currentBeat) * 150), 0.001)
            noteTweenX('defaultPlayerStrumX2', 2, 640 + (math.sin(currentBeat) * 150), 0.001)
            noteTweenX('defaultPlayerStrumX3', 3, 750 + (math.sin(currentBeat) * 150), 0.001)
            noteTweenY('defaultPlayerStrumY0', 0, 50 + (math.cos(currentBeat) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY1', 1, 50 + (math.cos(currentBeat) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY2', 2, 50 + (math.cos(currentBeat) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY3', 3, 50 + (math.cos(currentBeat)  * -25), 0.001)
        end
        if funniMoveBig then
            noteTweenAngle('defaultPlayerStrumAngle4', 4, 0 + (math.cos(currentBeat) * -1000), 0.001)
            noteTweenAngle('defaultPlayerStrumAngle5', 5, 0 + (math.cos(currentBeat) * -1000), 0.001)
            noteTweenAngle('defaultPlayerStrumAngle6', 6, 0 + (math.cos(currentBeat) * -1000), 0.001)
            noteTweenAngle('defaultPlayerStrumAngle7', 7, 0 + (math.cos(currentBeat) * -1000), 0.001)
            noteTweenAngle('defaultPlayerStrumAngle0', 0, 0 + (math.cos(currentBeat) * -1000), 0.001)
            noteTweenAngle('defaultPlayerStrumAngle1', 1, 0 + (math.cos(currentBeat) * -1000), 0.001)
            noteTweenAngle('defaultPlayerStrumAngle2', 2, 0 + (math.cos(currentBeat) * -1000), 0.001)
            noteTweenAngle('defaultPlayerStrumAngle3', 3, 0 + (math.cos(currentBeat) * -1000), 0.001)
            noteTweenX('defaultPlayerStrumX4', 4, 420 + (math.sin(currentBeat/1.5) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX5', 5, 530 + (math.sin(currentBeat/1.5) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX6', 6, 640 + (math.sin(currentBeat/1.5) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX7', 7, 750 + (math.sin(currentBeat/1.5) * 250), 0.001)
            noteTweenY('defaultPlayerStrumY4', 4, 150 + (math.cos(currentBeat/2) * -100), 0.001)
            noteTweenY('defaultPlayerStrumY5', 5, 150 + (math.cos(currentBeat/2) * -100), 0.001)
            noteTweenY('defaultPlayerStrumY6', 6, 150 + (math.cos(currentBeat/2) * -100), 0.001)
            noteTweenY('defaultPlayerStrumY7', 7, 150 + (math.cos(currentBeat/2)  * -100), 0.001)
            noteTweenX('defaultPlayerStrumX0', 0, 420 + (math.sin(currentBeat/1.5) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX1', 1, 530 + (math.sin(currentBeat/1.5) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX2', 2, 640 + (math.sin(currentBeat/1.5) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX3', 3, 750 + (math.sin(currentBeat/1.5) * 250), 0.001)
            noteTweenY('defaultPlayerStrumY0', 0, 150 + (math.cos(currentBeat/2) * -100), 0.001)
            noteTweenY('defaultPlayerStrumY1', 1, 150 + (math.cos(currentBeat/2) * -100), 0.001)
            noteTweenY('defaultPlayerStrumY2', 2, 150 + (math.cos(currentBeat/2) * -100), 0.001)
            noteTweenY('defaultPlayerStrumY3', 3, 150 + (math.cos(currentBeat/2)  * -100), 0.001)
        end
    end
    for i = 0, 3 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'demonsip')
    if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
        setPropertyFromGroup('unspawnNotes', i, 'texture', 'demonsip')
    end
end
end

function opponentNoteHit() 
    cameraShake('game', 0.0032, 0.05)
	cameraShake('hud', 0.008, 0.05)
    health = getProperty('health');
    if health > 0.05 then
        setProperty('health', health - uwu)
    end
end

function goodNoteHit() 
    health = getProperty('health');
    setProperty('health', health + 0.01)
end

function onStepHit()
    if curStep == 128 then
        noteTweenX('NoteMove1', 0, 420, 1.5, 'circIn')
        noteTweenX('NoteMove2', 1, 530, 1.5, 'circIn')
        noteTweenX('NoteMove3', 2, 640, 1.5, 'circIn')
        noteTweenX('NoteMove4', 3, 750, 1.5, 'circIn')
        noteTweenAngle('NoteCircle1', 0, 360, 1.5, 'circIn')
        noteTweenAngle('NoteCircle2', 1, 360, 1.5, 'circIn')
        noteTweenAngle('NoteCircle3', 2, 360, 1.5, 'circIn')
        noteTweenAngle('NoteCircle4', 3, 360, 1.5, 'circIn')
        noteTweenAngle('NoteCircle5', 4, -360, 1, 'bounceOut')
        noteTweenAngle('NoteCircle6', 5, -360, 1, 'bounceOut')
        noteTweenAngle('NoteCircle7', 6, -360, 1, 'bounceOut')
        noteTweenAngle('NoteCircle8', 7, -360, 1, 'bounceOut')
        noteTweenAlpha('NoteAlpha1', 0, 0.2, 1.5, 'circIn')
        noteTweenAlpha('NoteAlpha2', 1, 0.2, 1.5, 'circIn')
        noteTweenAlpha('NoteAlpha3', 2, 0.2, 1.5, 'circIn')
        noteTweenAlpha('NoteAlpha4', 3, 0.2, 1.5, 'circIn')
        noteTweenX('NoteMove5', 4, 420, 1, 'bounceOut')
        noteTweenX('NoteMove6', 5, 530, 1, 'bounceOut')
        noteTweenX('NoteMove7', 6, 640, 1, 'bounceOut')
        noteTweenX('NoteMove8', 7, 750, 1, 'bounceOut')
    end
    if curStep == 252 then
        uwu = 0.025
        shakeHUD = true
        funniMoveBig = true
        hudAngle = true
        doTweenAngle('nyoom', 'hellRon_satan', 36000, 24, 'circOut');
    end
    if curStep == 512 then
        uwu = 0.015
        shakeHUD = false
        funniMoveBig = false
        funniMove = true
        hudAngle = false
        noteTweenAngle('defaultPlayerStrumAngley0', 0, 0, 1, 'circOut')
        noteTweenAngle('defaultPlayerStrumAngley1', 1, 0, 1, 'circOut')
        noteTweenAngle('defaultPlayerStrumAngley2', 2, 0, 1, 'circOut')
        noteTweenAngle('defaultPlayerStrumAngley3', 3, 0, 1, 'circOut')
        noteTweenAngle('defaultPlayerStrumAngley4', 4, 0, 1, 'circOut')
        noteTweenAngle('defaultPlayerStrumAngley5', 5, 0, 1, 'circOut')
        noteTweenAngle('defaultPlayerStrumAngley6', 6, 0, 1, 'circOut')
        noteTweenAngle('defaultPlayerStrumAngley7', 7, 0, 1, 'circOut')
    end
    if curStep == 640 then
        doTweenY('dady', 'dad', -1500, 11.29, 'circInOut');
        doTweenY('penty', 'hellRon_satan', -1800, 3, 'circInOut');
        doTweenAngle('pentangle', 'hellRon_satan', 37440, 3, 'circInOut');
    end
    if curStep == 704 then
        doTweenY('bfy', 'boyfriend', -1500, 5.61, 'circInOut');
        doTweenX('pentx', 'hellRon_satan', -200, 1, 'circInOut');
        doTweenAngle('nyoom2', 'hellRon_satan', 146320, 32, 'circIn');
        scaleObject('hellRon_satan', 1.5, 1.5)
    end
    if curStep == 768 then
        uwu = 0.025
        shakeHUD = true
        funniMove = false
        funniMoveBig = true
        hudAngleStronk = true
        doTweenAlpha('flames', 'escape_fire', 1, 1);
    end
    if curStep == 1030 then
        shakeHUD = false
        funniMoveBig = false
        hudAngleStronk = false
        hudAngle = true
        doTweenAlpha('alphaHUD', 'camHUD', 0, 1);
        doTweenAlpha('flames', 'escape_fire', 0, 1);
        setProperty('dead.alpha', 1)
    end
    if curStep >= 768 and curStep <= 1036 then
        for note = 0, getProperty("unspawnNotes.length") do 
            setPropertyFromGroup("unspawnNotes", note, "color", getColorFromHex("FF0000"))
         end
    end
end