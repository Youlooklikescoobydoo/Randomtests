local uwu = 0

function onBeatHit()
    if curBeat == 72 then
        noteTweenX('NoteMove1', 0, 1050, 1, 'circInOut')
        noteTweenX('NoteMove2', 1, 940, 1, 'circInOut')
        noteTweenX('NoteMove3', 2, 830, 1, 'circInOut')
        noteTweenX('NoteMove4', 3, 720, 1, 'circInOut')
        noteTweenX('NoteMove5', 4, 450, 1, 'circInOut')
        noteTweenX('NoteMove6', 5, 340, 1, 'circInOut')
        noteTweenX('NoteMove7', 6, 230, 1, 'circInOut')
        noteTweenX('NoteMove8', 7, 120, 1, 'circInOut')
        doTweenAngle('yeeHUD', 'camHUD', 180, 3, 'circInOut')
        doTweenAngle('yeeGame', 'camGame', 180, 3, 'circInOut')
    end
    if curBeat == 136 then
        noteTweenX('NoteMove1', 0, 120, 1, 'circInOut')
        noteTweenX('NoteMove2', 1, 230, 1, 'circInOut')
        noteTweenX('NoteMove3', 2, 340, 1, 'circInOut')
        noteTweenX('NoteMove4', 3, 450, 1, 'circInOut')
        noteTweenX('NoteMove5', 4, 720, 1, 'circInOut')
        noteTweenX('NoteMove6', 5, 830, 1, 'circInOut')
        noteTweenX('NoteMove7', 6, 940, 1, 'circInOut')
        noteTweenX('NoteMove8', 7, 1050, 1, 'circInOut')
        doTweenAngle('yeeHUD', 'camHUD', 0, 3, 'circInOut')
        doTweenAngle('yeeGame', 'camGame', 0, 3, 'circInOut')
    end
    if curBeat == 200 then
        noteTweenX('NoteMove1', 0, 1050, 1, 'circInOut')
        noteTweenX('NoteMove2', 1, 940, 1, 'circInOut')
        noteTweenX('NoteMove3', 2, 830, 1, 'circInOut')
        noteTweenX('NoteMove4', 3, 720, 1, 'circInOut')
        noteTweenX('NoteMove5', 4, 450, 1, 'circInOut')
        noteTweenX('NoteMove6', 5, 340, 1, 'circInOut')
        noteTweenX('NoteMove7', 6, 230, 1, 'circInOut')
        noteTweenX('NoteMove8', 7, 120, 1, 'circInOut')
        doTweenAngle('yeeHUD', 'camHUD', 180, 3, 'circInOut')
        doTweenAngle('yeeGame', 'camGame', 180, 3, 'circInOut')
    end
    if curBeat == 328 then
        noteTweenX('NoteMove1', 0, 120, 1, 'circInOut')
        noteTweenX('NoteMove2', 1, 230, 1, 'circInOut')
        noteTweenX('NoteMove3', 2, 340, 1, 'circInOut')
        noteTweenX('NoteMove4', 3, 450, 1, 'circInOut')
        noteTweenX('NoteMove5', 4, 720, 1, 'circInOut')
        noteTweenX('NoteMove6', 5, 830, 1, 'circInOut')
        noteTweenX('NoteMove7', 6, 940, 1, 'circInOut')
        noteTweenX('NoteMove8', 7, 1050, 1, 'circInOut')
        doTweenAngle('yeeHUD', 'camHUD', 0, 3, 'circInOut')
        doTweenAngle('yeeGame', 'camGame', 0, 3, 'circInOut')
    end
end

function onUpdate(elapsed)
    doTweenAlpha('alpha1', 'deadly', owo, 0.5);
    doTweenAngle('penttilt', 'oldpent', uwu,  0.2, 'circOut')
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
    if curBeat >= 72 and curBeat <= 136 then
        cameraShake('game', 0.0032, 0.05)
	    cameraShake('hud', 0.008, 0.05)
    end
    if curBeat >= 200 and curBeat <= 328 then
        cameraShake('game', 0.0032, 0.05)
	    cameraShake('hud', 0.008, 0.05)
    end
    for i = 0, 3 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'demonsip')
    if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
        setPropertyFromGroup('unspawnNotes', i, 'texture', 'demonsip')
    end
end
end

function opponentNoteHit() 
    uwu = uwu + 10
    health = getProperty('health');
    if health > 0.05 then
        setProperty('health', health - 0.015)
    end
end

function goodNoteHit() 
    uwu = uwu - 5
end