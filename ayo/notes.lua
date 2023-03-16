function onUpdate()
    for i = 0, 3 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'ronsip')
    if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
        setPropertyFromGroup('unspawnNotes', i, 'texture', 'ronsip')
    end
end
end