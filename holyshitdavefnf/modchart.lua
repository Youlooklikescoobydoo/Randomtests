function onStepHit()
    if curStep == 384 then
        noteTweenX('NoteMove1', 0, -1400, 1.5, 'circIn')
        noteTweenX('NoteMove2', 1, -1530, 1.5, 'circIn')
        noteTweenX('NoteMove3', 2, -1640, 1.5, 'circIn')
        noteTweenX('NoteMove4', 3, -1750, 1.5, 'circIn')
        noteTweenAngle('NoteCircle1', 0, -720, 1.5, 'circIn')
        noteTweenAngle('NoteCircle2', 1, -720, 1.5, 'circIn')
        noteTweenAngle('NoteCircle3', 2, -720, 1.5, 'circIn')
        noteTweenAngle('NoteCircle4', 3, -720, 1.5, 'circIn')
        noteTweenX('NoteMove5', 4, 420, 1, 'bounceOut')
        noteTweenX('NoteMove6', 5, 530, 1, 'bounceOut')
        noteTweenX('NoteMove7', 6, 640, 1, 'bounceOut')
        noteTweenX('NoteMove8', 7, 750, 1, 'bounceOut')
    end
    if curStep == 448 then
        noteTweenX('NoteMove1', 0, 120, 1.5, 'circIn')
        noteTweenX('NoteMove2', 1, 230, 1.5, 'circIn')
        noteTweenX('NoteMove3', 2, 340, 1.5, 'circIn')
        noteTweenX('NoteMove4', 3, 450, 1.5, 'circIn')
        noteTweenAngle('NoteCircle1', 0, 720, 1.5, 'circIn')
        noteTweenAngle('NoteCircle2', 1, 720, 1.5, 'circIn')
        noteTweenAngle('NoteCircle3', 2, 720, 1.5, 'circIn')
        noteTweenAngle('NoteCircle4', 3, 720, 1.5, 'circIn')
        noteTweenX('NoteMove5', 4, 720, 1, 'bounceOut')
        noteTweenX('NoteMove6', 5, 830, 1, 'bounceOut')
        noteTweenX('NoteMove7', 6, 940, 1, 'bounceOut')
        noteTweenX('NoteMove8', 7, 1050, 1, 'bounceOut')
    end
end

function onBeatHit()
    if curBeat % 4 == 0 then
        cameraShake('game', 0.002, 0.2)
	    cameraShake('hud', 0.002, 0.2)
    end
end