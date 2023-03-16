local funni = false

function onCreate()
    makeLuaText('funniboi', 'Unfair Input Enabled!', 1250, 'timeTxt.X', 500)
	setObjectCamera('funniboi', 'hud')
	setTextSize('funniboi', 30)
	addLuaText('funniboi')
    setProperty('funniboi.alpha', 0)
end

function onUpdate()
    songPos = getSongPosition()
    local currentBeat = (songPos/100)/(curBpm/170)

    setProperty('funniboi.angle',0 - 10 * math.cos((currentBeat)*math.pi) )

    if funni == true then
        setPropertyFromClass('ClientPrefs', 'ghostTapping', false)
        setProperty('funniboi.alpha', 1)
    end
    if funni == false then
        setPropertyFromClass('ClientPrefs', 'ghostTapping', true)
        setProperty('funniboi.alpha', 0)
    end
end

function noteMiss() 
    health = getProperty('health');
    setProperty('health', health - 0.4)
end

function onBeatHit()
    if curBeat == 64 then
        funni = true
    end
    if curBeat == 128 then
        funni = false
    end
    if curBeat == 192 then
        funni = true
    end
    if curBeat == 260 then
        funni = false
    end
end