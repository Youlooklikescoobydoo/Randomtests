local uwu = 0
local funni = 10

function onCreate()
    setProperty('gf.visible', false)
end

function onUpdate(elapsed)
    doTweenAlpha('alpha1', 'deadly', owo, 0.5);
    doTweenAngle('penttilt', 'oldpent', uwu,  0.2, 'circOut')
    health = getProperty('health');
    if health > 0.05 then
        setProperty('health', health - 0.00075)
    end
    if getProperty('health') > 1.5 then
        owo = 0.3
    end
    if getProperty('health') <= 1.5 and getProperty('health') > 1 then
        owo = 0.5
    end
    if getProperty('health') <= 1 and getProperty('health') > 0.5 then
        owo = 0.7
    end
    if getProperty('health') <= 0.5 then
        owo = 0.9
    end
end

function onUpdatePost()
    for i = 0, 3 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'ronhell')
    if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
        setPropertyFromGroup('unspawnNotes', i, 'texture', 'ronhell')
    end
end
end

function opponentNoteHit() 
    uwu = uwu + 10
    cameraShake('game', 0.0032, 0.05)
	cameraShake('hud', 0.008, 0.05)
end

function goodNoteHit() 
    uwu = uwu - 5
    cameraShake('game', 0.0032, 0.05)
	cameraShake('hud', 0.008, 0.05)
end

function onBeatHit()
    if curBeat >= 208 and curBeat <= 336 then
        if curBeat %2 == 0 then
            funni = -funni
            doTweenAngle('tilt', 'camHUD', funni,  1, 'circOut')
        end
    end
    if curBeat >= 528 and curBeat <= 664 then
        if curBeat %2 == 0 then
            funni = -funni
            doTweenAngle('tilt', 'camHUD', funni,  1, 'circOut')
            doTweenAngle('tilt2', 'camGame', funni,  1, 'circOut')
        end
    end
    if curBeat == 76 then
        noteTweenAlpha('NoteAlpha1', 0, 0, 1)
        noteTweenAlpha('NoteAlpha2', 1, 0, 1)
        noteTweenAlpha('NoteAlpha3', 2, 0, 1)
        noteTweenAlpha('NoteAlpha4', 3, 0, 1)
        noteTweenX('NoteMove5', 4, 420, 1)
        noteTweenX('NoteMove6', 5, 530, 1)
        noteTweenX('NoteMove7', 6, 640, 1)
        noteTweenX('NoteMove8', 7, 750, 1)
    end
    if curBeat == 336 then
        doTweenAngle('tilt', 'camHUD', 0,  1, 'circOut')
    end
    if curBeat == 664 then
        doTweenAngle('tilt', 'camHUD', 0,  1, 'circOut')
        doTweenAngle('tilt2', 'camGame', 0,  1, 'circOut')
    end
end