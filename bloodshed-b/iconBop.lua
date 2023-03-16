local uwu = -15
local owo = -5
local owo2 = -30
local owu = 3

function onSongStart()
	if downscroll == false then
		doTweenY('healthBarY','bar',640,crochet/1000,'circInOut')
		doTweenY('healthBarY2','healthBar',640,crochet/1000,'circInOut')
	end
	if downscroll == true then
		doTweenY('healthBarY','bar',80,crochet/1000,'circInOut')
		doTweenY('healthBarY2','healthBar',40,crochet/1000,'circInOut')
	end
	setProperty('healthBar.y', 750)
	setProperty('timeTxt.x', 875)
	setProperty('timeBarBG.scale.x', 2)
	setProperty('timeBar.scale.x', 2)
	setProperty('timeBar.color', getColorFromHex('FFFFFF'))
end

function onBeatHit()

setProperty('iconP1.scale.x',1)
setProperty('iconP2.scale.x',1)

if curBeat % 1 == 0 then
	uwu = -uwu
	owo = -owo
	owo2 = -owo2
	setProperty('timeTxt.angle',-owo2)
	turnvalue = uwu
	turnvalue2 = 370
	if curBeat > 4 then
		setProperty('iconP1.angle',turnvalue)
		setProperty('iconP2.angle',-turnvalue2)
		setProperty('iconP1.scale.x',1.5)
		setProperty('iconP2.scale.x',1.5)
	end
end

doTweenAngle('iconTween1','iconP1',0,crochet/1000,'circOut')
doTweenAngle('iconTween2','iconP2',0,crochet/1000,'circOut')
doTweenAngle('timeTween1','timeTxt',0,crochet/1000,'circOut')

end

function goodNoteHit()
	owu = -owu
	setProperty('scoreTxt.angle',owu)
	doTweenAngle('scoreTween1','scoreTxt',0,crochet/1000,'circInOut')
end