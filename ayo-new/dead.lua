function onCreate()

    makeLuaSprite('dead', 'dead', -700, -250);
	setLuaSpriteScrollFactor('dead', 1, 1);
	scaleObject('dead', 5, 5)
	setObjectCamera('dead', 'other');
	setObjectOrder('dead', 1)

    addLuaSprite('dead', true);

end

function onSongStart()
    runTimer('cool', 3)
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'cool' then
        doTweenAlpha('wow', 'dead', 0, 5)
    end
end