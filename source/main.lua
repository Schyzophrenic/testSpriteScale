import "CoreLibs/graphics"
import "CoreLibs/object"
import "CoreLibs/sprites"
import "CoreLibs/timer"

local pd <const> = playdate
local gfx <const> = pd.graphics

local img = gfx.image.new("images/plane2")
assert(img)

local sprOrig = gfx.sprite.new()
sprOrig:setImage(img, pd.geometry.kUnflipped)
sprOrig:moveTo(100, 120)
sprOrig:add()

local sprScale = gfx.sprite.new()
sprScale:setImage(img, pd.geometry.kUnflipped, 5)
sprScale:moveTo(300, 120)
sprScale:add()

function pd.update()
	pd.timer.updateTimers()
	gfx.sprite.update()
end