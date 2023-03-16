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

    setPropertyFromGroup('strumLineNotes',i,'scale.x', 0.75+math.sin((currentBeat*2)*math.pi/16)*0.25)
    setPropertyFromGroup('unspawnNotes', i,'scale.x', 0.75+math.sin((currentBeat*2)*math.pi/16)*-0.25)
    setPropertyFromGroup('strumLineNotes',i,'scale.y', 0.75+math.sin((currentBeat*2)*math.pi/16)*0.25)
    setPropertyFromGroup('unspawnNotes', i,'scale.y', 0.75+math.sin((currentBeat*2)*math.pi/16)*-0.25)
    
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
    if hudAngle then
        setProperty('camGame.angle',0 - -7.5 * math.cos((currentBeat2*0.8)*math.pi) )
        setProperty('camHUD.angle',0 - -10 * math.cos((currentBeat2*1)*math.pi) )
    end
    if hudAngleStronk then
        setProperty('camGame.angle',0 - -18.75 * math.cos((currentBeat2*0.8)*math.pi) )
        setProperty('camHUD.angle',0 - -25 * math.cos((currentBeat2*1)*math.pi) )
    end
    if downscroll == false then
        if funniMove then
            noteTweenY('defaultPlayerStrumY0', 4, 50 + (math.cos(currentBeat+1) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY1', 5, 50 + (math.cos(currentBeat+2) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY2', 6, 50 + (math.cos(currentBeat+3) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY3', 7, 50 + (math.cos(currentBeat+4) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY4', 0, 50 + (math.cos(currentBeat+1) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY5', 1, 50 + (math.cos(currentBeat+2) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY6', 2, 50 + (math.cos(currentBeat+3) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY7', 3, 50 + (math.cos(currentBeat+4) * -25), 0.001)
        end
        if funniMoveBig then
            noteTweenX('defaultPlayerStrumX0', 4, 420 + (math.sin(currentBeat/3+0.1) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX1', 5, 530 + (math.sin(currentBeat/3+0.2) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX2', 6, 640 + (math.sin(currentBeat/3+0.3) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX3', 7, 750 + (math.sin(currentBeat/3+0.4) * 250), 0.001)
            noteTweenY('defaultPlayerStrumY0', 4, 200 + (math.cos(currentBeat/2+1) * -200), 0.001)
            noteTweenY('defaultPlayerStrumY1', 5, 200 + (math.cos(currentBeat/2+2) * -200), 0.001)
            noteTweenY('defaultPlayerStrumY2', 6, 200 + (math.cos(currentBeat/2+1) * -200), 0.001)
            noteTweenY('defaultPlayerStrumY3', 7, 200 + (math.cos(currentBeat/2+2) * -200), 0.001)
            noteTweenX('defaultPlayerStrumX4', 0, 420 + (math.sin(currentBeat/3+0.1) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX5', 1, 530 + (math.sin(currentBeat/3+0.2) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX6', 2, 640 + (math.sin(currentBeat/3+0.3) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX7', 3, 750 + (math.sin(currentBeat/3+0.4) * 250), 0.001)
            noteTweenY('defaultPlayerStrumY4', 0, 200 + (math.cos(currentBeat/3+1) + 1 * -200), 0.001)
            noteTweenY('defaultPlayerStrumY5', 1, 200 + (math.cos(currentBeat/3+2) + 2 * -200), 0.001)
            noteTweenY('defaultPlayerStrumY6', 2, 200 + (math.cos(currentBeat/3+1) + 1 * -200), 0.001)
            noteTweenY('defaultPlayerStrumY7', 3, 200 + (math.cos(currentBeat/3+2) + 2  * -200), 0.001)
        end
    end
    if downscroll == true then
        if funniMove then
            noteTweenY('defaultPlayerStrumY0', 4, 550 + (math.cos(currentBeat+1) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY1', 5, 550 + (math.cos(currentBeat+2) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY2', 6, 550 + (math.cos(currentBeat+3) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY3', 7, 550 + (math.cos(currentBeat+4) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY4', 0, 550 + (math.cos(currentBeat+1) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY5', 1, 550 + (math.cos(currentBeat+2) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY6', 2, 550 + (math.cos(currentBeat+3) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY7', 3, 550 + (math.cos(currentBeat+4) * 25), 0.001)
        end
        if funniMoveBig then
            noteTweenX('defaultPlayerStrumX0', 4, 420 + (math.sin(currentBeat/3+0.1) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX1', 5, 530 + (math.sin(currentBeat/3+0.2) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX2', 6, 640 + (math.sin(currentBeat/3+0.3) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX3', 7, 750 + (math.sin(currentBeat/3+0.4) * 250), 0.001)
            noteTweenY('defaultPlayerStrumY0', 4, 400 + (math.cos(currentBeat/2+1) * 200), 0.001)
            noteTweenY('defaultPlayerStrumY1', 5, 400 + (math.cos(currentBeat/2+2) * 200), 0.001)
            noteTweenY('defaultPlayerStrumY2', 6, 400 + (math.cos(currentBeat/2+1) * 200), 0.001)
            noteTweenY('defaultPlayerStrumY3', 7, 400 + (math.cos(currentBeat/2+2) * 200), 0.001)
            noteTweenX('defaultPlayerStrumX4', 0, 420 + (math.sin(currentBeat/3+0.1) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX5', 1, 530 + (math.sin(currentBeat/3+0.2) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX6', 2, 640 + (math.sin(currentBeat/3+0.3) * 250), 0.001)
            noteTweenX('defaultPlayerStrumX7', 3, 750 + (math.sin(currentBeat/3+0.4) * 250), 0.001)
            noteTweenY('defaultPlayerStrumY4', 0, 400 + (math.cos(currentBeat/3+1) + 1 * 200), 0.001)
            noteTweenY('defaultPlayerStrumY5', 1, 400 + (math.cos(currentBeat/3+2) + 2 * 200), 0.001)
            noteTweenY('defaultPlayerStrumY6', 2, 400 + (math.cos(currentBeat/3+1) + 1 * 200), 0.001)
            noteTweenY('defaultPlayerStrumY7', 3, 400 + (math.cos(currentBeat/3+2) + 2  * 200), 0.001)
        end
    end
    for i = 0, 3 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'ronhell')
    if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
        setPropertyFromGroup('unspawnNotes', i, 'texture', 'ronhell')
    end
end
end

function opponentNoteHit() 
    setProperty('camHUD.zoom', 1.2)
    doTweenZoom('HUD', 'camHUD', 1, 0.5, 'circout')
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
    if curStep == 256 then
        uwu = 0.025
        funniMove = true
        hudAngle = true
        doTweenAngle('nyoom', 'hellRon_satan', 36000, 20.47, 'circInOut');
        doTweenAlpha('flames', 'escape_fire', 1, 1);
        noteTweenX('NoteMove1', 0, 420, 1, 'bounceOut')
        noteTweenX('NoteMove2', 1, 530, 1, 'bounceOut')
        noteTweenX('NoteMove3', 2, 640, 1, 'bounceOut')
        noteTweenX('NoteMove4', 3, 750, 1, 'bounceOut')
        noteTweenAngle('NoteCircle1', 0, 360, 1, 'bounceOut')
        noteTweenAngle('NoteCircle2', 1, 360, 1, 'bounceOut')
        noteTweenAngle('NoteCircle3', 2, 360, 1, 'bounceOut')
        noteTweenAngle('NoteCircle4', 3, 360, 1, 'bounceOut')
        noteTweenAngle('NoteCircle5', 4, -360, 1, 'bounceOut')
        noteTweenAngle('NoteCircle6', 5, -360, 1, 'bounceOut')
        noteTweenAngle('NoteCircle7', 6, -360, 1, 'bounceOut')
        noteTweenAngle('NoteCircle8', 7, -360, 1, 'bounceOut')
        noteTweenX('NoteMove5', 4, 420, 1, 'bounceOut')
        noteTweenX('NoteMove6', 5, 530, 1, 'bounceOut')
        noteTweenX('NoteMove7', 6, 640, 1, 'bounceOut')
        noteTweenX('NoteMove8', 7, 750, 1, 'bounceOut')
    end
    if curStep == 316 then
        noteTweenAlpha('NoteAlpha1', 0, 0.3, 1)
        noteTweenAlpha('NoteAlpha2', 1, 0.3, 1)
        noteTweenAlpha('NoteAlpha3', 2, 0.3, 1)
        noteTweenAlpha('NoteAlpha4', 3, 0.3, 1)
    end
    if curStep == 512 then
        uwu = 0.015
        funniMove = false
        doTweenAlpha('flames', 'escape_fire', 0, 1);
    end
    if curStep == 768 then
        uwu = 0.025
        hudAngle = false
        funniMoveBig = true
        hudAngleStronk = true
        doTweenAngle('nyoom2', 'hellRon_satan', 75600, 20.40, 'circInOut');
        doTweenAlpha('flames', 'escape_fire', 1, 1);
    end
    if curStep == 1040 then
        funniMoveBig = false
        hudAngleStronk = false
        hudAngle = true
        noteTweenX('NoteMove5', 4, 420, 1, 'circIn')
        noteTweenX('NoteMove6', 5, 530, 1, 'circIn')
        noteTweenX('NoteMove7', 6, 640, 1, 'circIn')
        noteTweenX('NoteMove8', 7, 750, 1, 'circIn')
        noteTweenX('NoteMove1', 0, 420, 1, 'circIn')
        noteTweenX('NoteMove2', 1, 530, 1, 'circIn')
        noteTweenX('NoteMove3', 2, 640, 1, 'circIn')
        noteTweenX('NoteMove4', 3, 750, 1, 'circIn')
        if downscroll == false then
            noteTweenY('NoteMove5', 4, 50, 1, 'circIn')
            noteTweenY('NoteMove6', 5, 50, 1, 'circIn')
            noteTweenY('NoteMove7', 6, 50, 1, 'circIn')
            noteTweenY('NoteMove8', 7, 50, 1, 'circIn')
            noteTweenY('NoteMove1', 0, 50, 1, 'circIn')
            noteTweenY('NoteMove2', 1, 50, 1, 'circIn')
            noteTweenY('NoteMove3', 2, 50, 1, 'circIn')
            noteTweenY('NoteMove4', 3, 50, 1, 'circIn')
        end
        if downscroll == true then
            noteTweenY('NoteMove5', 4, 550, 1, 'circIn')
            noteTweenY('NoteMove6', 5, 550, 1, 'circIn')
            noteTweenY('NoteMove7', 6, 550, 1, 'circIn')
            noteTweenY('NoteMove8', 7, 550, 1, 'circIn')
            noteTweenY('NoteMove1', 0, 550, 1, 'circIn')
            noteTweenY('NoteMove2', 1, 550, 1, 'circIn')
            noteTweenY('NoteMove3', 2, 550, 1, 'circIn')
            noteTweenY('NoteMove4', 3, 550, 1, 'circIn')
        end
    end
    if curStep == 1296 then
        doTweenAlpha('alphaHUD', 'camHUD', 0, 1);
        doTweenAlpha('flames', 'escape_fire', 0, 1);
    end
    if curStep <= 1296 then
        cameraShake('game', 0.0032, 0.05)
	    cameraShake('hud', 0.008, 0.05)
    end
end