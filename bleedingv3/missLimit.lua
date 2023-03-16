missLimit = 50
textSize = 30


function onCreate()
	makeLuaText('limitText', 'Miss limit:', 1210, 'timeTxt.X', 300)
	setObjectCamera('limitText', 'hud')
	screenCenter('limitText', 'x')
	setTextSize('limitText', textSize)
	setProperty('limitText.alpha', 0)
	addLuaText('limitText')

	makeLuaText('limit', missLimit, 1410, 'timeTxt.X', 340)
	setObjectCamera('limit', 'hud')
	screenCenter('limit', 'x')
	setTextSize('limit', textSize)
	setProperty('limit.alpha', 0)
	addLuaText('limit')
end

function onUpdate()
	if misses >= missLimit then
		setProperty('health', 0)
	end

	local missesleft = missLimit - misses

	setTextString('limit', missesleft)
end

function onSongStart()
	doTweenAlpha('limitTextTween', 'limitText', 1, 0.5, linear)
	doTweenAlpha('limitTween', 'limit', 1, 0.3, linear)
end
