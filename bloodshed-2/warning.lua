textSize = 30


function onCreate()
	makeLuaText('limitText', 'Warning, this is a fanmade version! It is also very reptitive so expect a bit of boredness! ', 1210, 'timeTxt.X', 300)
	setObjectCamera('limitText', 'hud')
	screenCenter('limitText', 'x')
	setTextSize('limitText', textSize)
	setProperty('limitText.alpha', 0)
	addLuaText('limitText')
end

function onBeatHit()
	if curBeat == 48 then
		doTweenAlpha('limitTextTween', 'limitText', 0, 0.5, linear)
	end
end

function onSongStart()
	doTweenAlpha('limitTextTween', 'limitText', 1, 0.5, linear)
end
