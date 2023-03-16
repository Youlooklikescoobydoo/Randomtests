local uwu = 0.015
local owo = 0.5
local owo2 = 0.5

function onCreate()
    runTimer('start', 0.5)
    runTimer('reset', 7)
    doTweenX('alyxnyoom', 'alyxflyred', 2000, 7);
    doTweenAngle('alyxspeen', 'alyxflyred', 72000, 1200);
    setProperty('hellRon_satan.y', 1000)
    setProperty('gf.visible', false)
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
    if tag == 'funni' then
        doTweenY('hpdrop3', 'healthBar', 1000, 1, 'circIn');
        doTweenAngle('hptilt3', 'healthBar', 40, 2, 'circIn');
        doTweenY('hpdrop4', 'bar', 1000, 1, 'circIn');
        doTweenAngle('hptilt4', 'bar', 40, 2, 'circIn');
        doTweenY('p1drop', 'iconP1', 600, 0.5, 'bounceOut');
        doTweenY('p2drop', 'iconP2', 600, 0.5, 'bounceOut');
        doTweenY('txtdrop', 'timeTxt', 1000, 4, 'circOut');
        doTweenY('bgdrop', 'timeBarBG', 1000, 4, 'circOut');
        doTweenY('tpdrop', 'timeBar', 1000, 4, 'circOut');
        doTweenAngle('txttilt', 'timeTxt', 360, 4, 'circInOut');
        doTweenAngle('bgtilt', 'timeBarBG', -140, 4, 'circInOut');
        doTweenAnglr('tptilt', 'timeBar', -140, 4, 'circInOut');
    end
    if curBeat < 896 then
        if tag == 'reset' then
            runTimer('reset', 7)
            doTweenX('alyxnyoom', 'alyxflyred', 2000, 7);
            setProperty('alyxflyred.x', -300)
        end
    end
end

function onUpdatePost()
    for i = 0, 3 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'ronhell')
    if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
        setPropertyFromGroup('unspawnNotes', i, 'texture', 'ronhell')
    end
end

function onBeatHit()
    doTweenZoom('camzoom', 'camHUD', 1, 0.25, 'circOut')
    setProperty('camHUD.zoom', 1.2)
end

function onUpdate()
    songPos = getSongPosition()
    local currentBeat = (songPos/100)/(curBpm/170)
    currentBeat2 = (songPos / 1000) * (bpm / 170)

    setProperty('iconP1.alpha', getProperty('health')/2)
    if curStep < 896 then
        doTweenY('alyxfloat', 'alyxflyred', 200 + (math.sin(currentBeat/5) * 50), 0.001)
    end
    if curStep >= 896 then
        doTweenY('alyxfloat2', 'alyxflyred', -1300 + (math.sin(currentBeat/4) * 250), 0.001)
        doTweenX('alyxfloat3', 'alyxflyred', 500 + (math.sin(currentBeat/5) * 250), 0.001)
    end
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
            setProperty('camGame.angle',0 - -6 * math.cos((currentBeat2*0.7)*math.pi) )
            setProperty('camHUD.angle',0 - -6 * math.cos((currentBeat2*0.9)*math.pi) )
            function onBeatHit()
                setProperty('camHUD.zoom', 1.2)
                doTweenZoom('HUDZoom', 'caHUD', 1, crochet*5000, 'circIn')
            end
        end
        if hudAngleStronk then
            setProperty('camGame.angle',0 - -12.5 * math.cos((currentBeat2*0.7)*math.pi) )
            setProperty('camHUD.angle',0 - -18 * math.cos((currentBeat2*0.9)*math.pi) )
        end
        if hudAngleStronker then
            setProperty('camGame.angle',0 - -15 * math.cos((currentBeat2*0.7)*math.pi) )
            setProperty('camHUD.angle',0 - -20 * math.cos((currentBeat2*0.9)*math.pi) )
        end
        if shakeHUD then
            setProperty('camGame.x',0 - 10 * math.cos((currentBeat2*20.5)*math.pi) )
            setProperty('camHUD.x',0 - 10 * math.cos((currentBeat2*20.1)*math.pi) )
        end
        if downscroll == false then
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
            if funniMoveBigger then
                noteTweenAngle('defaultPlayerStrumAngle4', 4, 0 + (math.cos(currentBeat) * -1000), 0.001)
                noteTweenAngle('defaultPlayerStrumAngle5', 5, 0 + (math.cos(currentBeat) * -1000), 0.001)
                noteTweenAngle('defaultPlayerStrumAngle6', 6, 0 + (math.cos(currentBeat) * -1000), 0.001)
                noteTweenAngle('defaultPlayerStrumAngle7', 7, 0 + (math.cos(currentBeat) * -1000), 0.001)
                noteTweenAngle('defaultPlayerStrumAngle0', 0, 0 + (math.cos(currentBeat) * -1000), 0.001)
                noteTweenAngle('defaultPlayerStrumAngle1', 1, 0 + (math.cos(currentBeat) * -1000), 0.001)
                noteTweenAngle('defaultPlayerStrumAngle2', 2, 0 + (math.cos(currentBeat) * -1000), 0.001)
                noteTweenAngle('defaultPlayerStrumAngle3', 3, 0 + (math.cos(currentBeat) * -1000), 0.001)
                noteTweenX('defaultPlayerStrumX4', 4, 420 + (math.sin(currentBeat/1.5+0.5) * 300), 0.001)
                noteTweenX('defaultPlayerStrumX5', 5, 530 + (math.sin(currentBeat/1.5+1) * 300), 0.001)
                noteTweenX('defaultPlayerStrumX6', 6, 640 + (math.sin(currentBeat/1.5+1.5) * 300), 0.001)
                noteTweenX('defaultPlayerStrumX7', 7, 750 + (math.sin(currentBeat/1.5+2) * 300), 0.001)
                noteTweenY('defaultPlayerStrumY4', 4, 200 + (math.cos(currentBeat/2) * -150), 0.001)
                noteTweenY('defaultPlayerStrumY5', 5, 200 + (math.cos(currentBeat/2) * -150), 0.001)
                noteTweenY('defaultPlayerStrumY6', 6, 200 + (math.cos(currentBeat/2) * -150), 0.001)
                noteTweenY('defaultPlayerStrumY7', 7, 200 + (math.cos(currentBeat/2)  * -150), 0.001)
                noteTweenX('defaultPlayerStrumX0', 0, 420 + (math.sin(currentBeat/1.5+0.5) * 300), 0.001)
                noteTweenX('defaultPlayerStrumX1', 1, 530 + (math.sin(currentBeat/1.5+1) * 300), 0.001)
                noteTweenX('defaultPlayerStrumX2', 2, 640 + (math.sin(currentBeat/1.5+1.5) * 300), 0.001)
                noteTweenX('defaultPlayerStrumX3', 3, 750 + (math.sin(currentBeat/1.5+2) * 300), 0.001)
                noteTweenY('defaultPlayerStrumY0', 0, 200 + (math.cos(currentBeat/2) * -150), 0.001)
                noteTweenY('defaultPlayerStrumY1', 1, 200 + (math.cos(currentBeat/2) * -150), 0.001)
                noteTweenY('defaultPlayerStrumY2', 2, 200 + (math.cos(currentBeat/2) * -150), 0.001)
                noteTweenY('defaultPlayerStrumY3', 3, 200 + (math.cos(currentBeat/2)  * -150), 0.001)
            end
        end
        if downscroll == true then
            if funniMove then
                noteTweenX('defaultPlayerStrumX4', 4, 420 + (math.sin(currentBeat) * -150), 0.001)
                noteTweenX('defaultPlayerStrumX5', 5, 530 + (math.sin(currentBeat) * -150), 0.001)
                noteTweenX('defaultPlayerStrumX6', 6, 640 + (math.sin(currentBeat) * -150), 0.001)
                noteTweenX('defaultPlayerStrumX7', 7, 750 + (math.sin(currentBeat) * -150), 0.001)
                noteTweenY('defaultPlayerStrumY4', 4, 550 + (math.cos(currentBeat) * 25), 0.001)
                noteTweenY('defaultPlayerStrumY5', 5, 550 + (math.cos(currentBeat) * 25), 0.001)
                noteTweenY('defaultPlayerStrumY6', 6, 550 + (math.cos(currentBeat) * 25), 0.001)
                noteTweenY('defaultPlayerStrumY7', 7, 550 + (math.cos(currentBeat) * 25), 0.001)
                noteTweenX('defaultPlayerStrumX0', 0, 420 + (math.sin(currentBeat) * -150), 0.001)
                noteTweenX('defaultPlayerStrumX1', 1, 530 + (math.sin(currentBeat) * -150), 0.001)
                noteTweenX('defaultPlayerStrumX2', 2, 640 + (math.sin(currentBeat) * -150), 0.001)
                noteTweenX('defaultPlayerStrumX3', 3, 750 + (math.sin(currentBeat) * -150), 0.001)
                noteTweenY('defaultPlayerStrumY0', 0, 550 + (math.cos(currentBeat) * 25), 0.001)
                noteTweenY('defaultPlayerStrumY1', 1, 550 + (math.cos(currentBeat) * 25), 0.001)
                noteTweenY('defaultPlayerStrumY2', 2, 550 + (math.cos(currentBeat) * 25), 0.001)
                noteTweenY('defaultPlayerStrumY3', 3, 550 + (math.cos(currentBeat)  *-25), 0.001)
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
                noteTweenX('defaultPlayerStrumX4', 4, 420 + (math.sin(currentBeat/1.5) * -250), 0.001)
                noteTweenX('defaultPlayerStrumX5', 5, 530 + (math.sin(currentBeat/1.5) * -250), 0.001)
                noteTweenX('defaultPlayerStrumX6', 6, 640 + (math.sin(currentBeat/1.5) * -250), 0.001)
                noteTweenX('defaultPlayerStrumX7', 7, 750 + (math.sin(currentBeat/1.5) * -250), 0.001)
                noteTweenY('defaultPlayerStrumY4', 4, 450 + (math.cos(currentBeat/2) * 100), 0.001)
                noteTweenY('defaultPlayerStrumY5', 5, 450 + (math.cos(currentBeat/2) * 100), 0.001)
                noteTweenY('defaultPlayerStrumY6', 6, 450 + (math.cos(currentBeat/2) * 100), 0.001)
                noteTweenY('defaultPlayerStrumY7', 7, 450 + (math.cos(currentBeat/2)  * 100), 0.001)
                noteTweenX('defaultPlayerStrumX0', 0, 420 + (math.sin(currentBeat/1.5) * -250), 0.001)
                noteTweenX('defaultPlayerStrumX1', 1, 530 + (math.sin(currentBeat/1.5) * -250), 0.001)
                noteTweenX('defaultPlayerStrumX2', 2, 640 + (math.sin(currentBeat/1.5) * -250), 0.001)
                noteTweenX('defaultPlayerStrumX3', 3, 750 + (math.sin(currentBeat/1.5) * -250), 0.001)
                noteTweenY('defaultPlayerStrumY0', 0, 450 + (math.cos(currentBeat/2) * 100), 0.001)
                noteTweenY('defaultPlayerStrumY1', 1, 450 + (math.cos(currentBeat/2) * 100), 0.001)
                noteTweenY('defaultPlayerStrumY2', 2, 450 + (math.cos(currentBeat/2) * 100), 0.001)
                noteTweenY('defaultPlayerStrumY3', 3, 450 + (math.cos(currentBeat/2)  *-100), 0.001)
            end
            if funniMoveBigger then
                noteTweenAngle('defaultPlayerStrumAngle4', 4, 0 + (math.cos(currentBeat) * -1000), 0.001)
                noteTweenAngle('defaultPlayerStrumAngle5', 5, 0 + (math.cos(currentBeat) * -1000), 0.001)
                noteTweenAngle('defaultPlayerStrumAngle6', 6, 0 + (math.cos(currentBeat) * -1000), 0.001)
                noteTweenAngle('defaultPlayerStrumAngle7', 7, 0 + (math.cos(currentBeat) * -1000), 0.001)
                noteTweenAngle('defaultPlayerStrumAngle0', 0, 0 + (math.cos(currentBeat) * -1000), 0.001)
                noteTweenAngle('defaultPlayerStrumAngle1', 1, 0 + (math.cos(currentBeat) * -1000), 0.001)
                noteTweenAngle('defaultPlayerStrumAngle2', 2, 0 + (math.cos(currentBeat) * -1000), 0.001)
                noteTweenAngle('defaultPlayerStrumAngle3', 3, 0 + (math.cos(currentBeat) * -1000), 0.001)
                noteTweenX('defaultPlayerStrumX4', 4, 420 + (math.sin(currentBeat/1.5+0.5) * -300), 0.001)
                noteTweenX('defaultPlayerStrumX5', 5, 530 + (math.sin(currentBeat/1.5+1) * -300), 0.001)
                noteTweenX('defaultPlayerStrumX6', 6, 640 + (math.sin(currentBeat/1.5+1.5) * -300), 0.001)
                noteTweenX('defaultPlayerStrumX7', 7, 750 + (math.sin(currentBeat/1.5+2) * -300), 0.001)
                noteTweenY('defaultPlayerStrumY4', 4, 350 + (math.cos(currentBeat/2) * 150), 0.001)
                noteTweenY('defaultPlayerStrumY5', 5, 350 + (math.cos(currentBeat/2) * 150), 0.001)
                noteTweenY('defaultPlayerStrumY6', 6, 350 + (math.cos(currentBeat/2) * 150), 0.001)
                noteTweenY('defaultPlayerStrumY7', 7, 350 + (math.cos(currentBeat/2)  * 150), 0.001)
                noteTweenX('defaultPlayerStrumX0', 0, 420 + (math.sin(currentBeat/1.5+0.5) * -300), 0.001)
                noteTweenX('defaultPlayerStrumX1', 1, 530 + (math.sin(currentBeat/1.5+1) * -300), 0.001)
                noteTweenX('defaultPlayerStrumX2', 2, 640 + (math.sin(currentBeat/1.5+1.5) * -300), 0.001)
                noteTweenX('defaultPlayerStrumX3', 3, 750 + (math.sin(currentBeat/1.5+2) * -300), 0.001)
                noteTweenY('defaultPlayerStrumY0', 0, 350 + (math.cos(currentBeat/2) * 150), 0.001)
                noteTweenY('defaultPlayerStrumY1', 1, 350 + (math.cos(currentBeat/2) * 150), 0.001)
                noteTweenY('defaultPlayerStrumY2', 2, 350 + (math.cos(currentBeat/2) * 150), 0.001)
                noteTweenY('defaultPlayerStrumY3', 3, 350 + (math.cos(currentBeat/2)  * 150), 0.001)
            end
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
    if curStep == 368 then
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
        doTweenY('movepenta', 'hellRon_satan', 0, 1, 'circOut');
        doTweenAngle('nyoom', 'hellRon_satan', -720, 1, 'circOut');
    end
    if curStep == 384 then
        uwu = 0.025
        shakeHUD = true
        funniMoveBig = true
        hudAngle = true
        doTweenAngle('nyoom', 'hellRon_satan', 36000, 24, 'circOut');
        doTweenY('hpdrop', 'healthBar', 400, 1, 'circOut');
        doTweenAngle('hptilt', 'healthBar', -20, 1, 'circInOut');
        doTweenY('p1drop', 'iconP1', 400, 1, 'circOut');
        doTweenY('p2drop', 'iconP2', 400, 1, 'circOut');
        doTweenY('hpdrop2', 'bar', 400, 1, 'circOut');
        doTweenAngle('hptilt2', 'bar', -20, 1, 'circInOut');
        runTimer('funni', 1)
        
    end
    if curStep == 640 then
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
    if curStep == 832 then
        doTweenY('penty', 'hellRon_satan', -1500, 3, 'circInOut');
        doTweenAngle('pentangle', 'hellRon_satan', 37440, 3, 'circInOut');
    end
    if curStep == 880 then
        doTweenY('dady', 'dad', -1500, 2, 'circInOut');
        doTweenY('bfy', 'boyfriend', -1500, 2, 'circInOut');
        doTweenX('pentx', 'hellRon_satan', 200, 0.1, 'circInOut');
    end
    if curStep == 896 then
        uwu = 0.025
        shakeHUD = true
        funniMove = false
        funniMoveBig = true
        hudAngleStronk = true
        doTweenAlpha('flames', 'escape_fire', 1, 1);
        doTweenAngle('nyoom2', 'hellRon_satan', 446320, 55, 'circIn');
        doTweenAngle('bfnyoom', 'boyfriend', 7200, 55);
        doTweenAlpha('alphapart', 'particle', 0.5, 1)
        doTweenY('partY', 'particle', -75600, 160);
        setProperty('skybeam.alpha', 1)
        setProperty('boyfriend.scale.x', 0.5)
        setProperty('boyfriend.scale.y', 0.5)
        setProperty('dad.scale.x', 0.5)
        setProperty('dad.scale.y', 0.5)
        setProperty('alyxflyred.scale.x', 0.075)
        setProperty('alyxflyred.scale.y', 0.075)
        setProperty('alyxflyred.y', -1300)
        setProperty('alyxflyred.x', 500)
    end
    if curStep == 1136 then
        hudAngle = true
        funniMoveBig = false
        hudAngleStronk = false
    end
    if curStep == 1152 then
        hudAngle = false
        funniMoveBigger = true
        hudAngleStronker = true
    end
    if curStep == 1440 then
        shakeHUD = false
        funniMoveBig = false
        hudAngleStronk = false
        hudAngle = true
        doTweenAlpha('alphaHUD', 'camHUD', 0, 1);
        doTweenAlpha('flames', 'escape_fire', 0, 1);
        doTweenAlpha('dead', 'dead', 1, 1.5);
    end
    if curStep >= 1152 and curStep <= 1440 then
        for note = 0, getProperty("unspawnNotes.length") do 
            setPropertyFromGroup("unspawnNotes", note, "color", getColorFromHex("FF0000"))
         end
    end
end