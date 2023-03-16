local uwu = 0.02
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
            setProperty('camGame.angle',0 - 10 * math.cos((currentBeat2*0.5)*math.pi) )
            setProperty('camHUD.angle',0 - 20 * math.cos((currentBeat2*0.6)*math.pi) )
        end
        if funniMove then
            noteTweenX('defaultPlayerStrumX0', 4, 420 + (math.sin(currentBeat) * 25), 0.001)
            noteTweenX('defaultPlayerStrumX1', 5, 530 + (math.sin(currentBeat) * 25), 0.001)
            noteTweenX('defaultPlayerStrumX2', 6, 640 + (math.sin(currentBeat) * 25), 0.001)
            noteTweenX('defaultPlayerStrumX3', 7, 750 + (math.sin(currentBeat) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY0', 4, 50 + (math.cos(currentBeat) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY1', 5, 50 + (math.cos(currentBeat) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY2', 6, 50 + (math.cos(currentBeat) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY3', 7, 50 + (math.cos(currentBeat)  * -25), 0.001)
        end
        if funniMoveBig then
            noteTweenX('defaultPlayerStrumX0', 4, 420 + (math.sin(currentBeat/2) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX1', 5, 530 + (math.sin(currentBeat/2) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX2', 6, 640 + (math.sin(currentBeat/2) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX3', 7, 750 + (math.sin(currentBeat/2) * 250), 0.001)
            noteTweenY('defaultPlayerStrumY0', 4, 150 + (math.cos(currentBeat/3) * -100), 0.001)
            noteTweenY('defaultPlayerStrumY1', 5, 150 + (math.cos(currentBeat/3) * -100), 0.001)
            noteTweenY('defaultPlayerStrumY2', 6, 150 + (math.cos(currentBeat/3) * -100), 0.001)
            noteTweenY('defaultPlayerStrumY3', 7, 150 + (math.cos(currentBeat/3)  * -100), 0.001)
        end
    end
    if downscroll == true then
        if hudAngle then
            setProperty('camGame.angle',0 - 10 * math.cos((currentBeat2*0.5)*math.pi) )
            setProperty('camHUD.angle',0 - 20 * math.cos((currentBeat2*0.6)*math.pi) )
        end
        if funniMove then
            noteTweenX('defaultPlayerStrumX0', 4, 420 + (math.sin(currentBeat) * 25), 0.001)
            noteTweenX('defaultPlayerStrumX1', 5, 530 + (math.sin(currentBeat) * 25), 0.001)
            noteTweenX('defaultPlayerStrumX2', 6, 640 + (math.sin(currentBeat) * 25), 0.001)
            noteTweenX('defaultPlayerStrumX3', 7, 750 + (math.sin(currentBeat) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY0', 4, 550 + (math.cos(currentBeat) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY1', 5, 550 + (math.cos(currentBeat) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY2', 6, 550 + (math.cos(currentBeat) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY3', 7, 550 + (math.cos(currentBeat)  * 25), 0.001)
        end
        if funniMoveBig then
            noteTweenX('defaultPlayerStrumX0', 4, 420 + (math.sin(currentBeat/2) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX1', 5, 530 + (math.sin(currentBeat/2) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX2', 6, 640 + (math.sin(currentBeat/2) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX3', 7, 750 + (math.sin(currentBeat/2) * 250), 0.001)
            noteTweenY('defaultPlayerStrumY0', 4, 450 + (math.cos(currentBeat/3) * 100), 0.001)
            noteTweenY('defaultPlayerStrumY1', 5, 450 + (math.cos(currentBeat/3) * 100), 0.001)
            noteTweenY('defaultPlayerStrumY2', 6, 450 + (math.cos(currentBeat/3) * 100), 0.001)
            noteTweenY('defaultPlayerStrumY3', 7, 450 + (math.cos(currentBeat/3)  * 100), 0.001)
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

function onBeatHit()
    if curBeat % 2 == 0 then
        cameraShake('game', 0.004, 0.2)
	    cameraShake('hud', 0.004, 0.2)
    end
end

function onStepHit()
    if curStep == 256 then
        uwu = 0.035
        hudAngle = true
        doTweenAlpha('flames', 'escape_fire', 1, 1);
        doTweenAngle('nyoom', 'hellRon_satan', 36000, 24, 'circInOut');
        noteTweenX('NoteMove1', 0, 1400, 1.5, 'circIn')
        noteTweenX('NoteMove2', 1, 1530, 1.5, 'circIn')
        noteTweenX('NoteMove3', 2, 1640, 1.5, 'circIn')
        noteTweenX('NoteMove4', 3, 1750, 1.5, 'circIn')
        noteTweenAngle('NoteCircle1', 0, 720, 1.5, 'circIn')
        noteTweenAngle('NoteCircle2', 1, 720, 1.5, 'circIn')
        noteTweenAngle('NoteCircle3', 2, 720, 1.5, 'circIn')
        noteTweenAngle('NoteCircle4', 3, 720, 1.5, 'circIn')
        noteTweenAngle('NoteCircle5', 4, -360, 1, 'bounceOut')
        noteTweenAngle('NoteCircle6', 5, -360, 1, 'bounceOut')
        noteTweenAngle('NoteCircle7', 6, -360, 1, 'bounceOut')
        noteTweenAngle('NoteCircle8', 7, -360, 1, 'bounceOut')
        noteTweenX('NoteMove5', 4, 420, 1, 'bounceOut')
        noteTweenX('NoteMove6', 5, 530, 1, 'bounceOut')
        noteTweenX('NoteMove7', 6, 640, 1, 'bounceOut')
        noteTweenX('NoteMove8', 7, 750, 1, 'bounceOut')
    end
    if curStep == 512 then
        uwu = 0.02
        funniMove = true
        hudAngle = false
        doTweenAlpha('flames', 'escape_fire', 0, 1);
    end
    if curStep == 768 then
        uwu = 0.035
        funniMove = false
        funniMoveBig = true
        hudAngle = true
        doTweenAngle('nyoom2', 'hellRon_satan', 75600, 24.71, 'circInOut');
        doTweenAlpha('flames', 'escape_fire', 1, 1);
    end
    if curStep == 1040 then
        funniMoveBig = false
        hudAngleStronk = false
        hudAngle = true
        doTweenAlpha('alphaHUD', 'camHUD', 0, 1);
        doTweenAlpha('flames', 'escape_fire', 0, 1);
    end
end