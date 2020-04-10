Flashlight = {}


function Flashlight.ApplyMod(dt)
  for i, v in ipairs(listOfArrows) do
    if (v.direction == 4 and v.tempPosition < gh * 0.815) or (v.direction == 2 and v.tempPosition > gh * 0.185) or
      (v.direction == 1 and v.tempPosition < gw * 0.675) or (v.direction == 3 and v.tempPosition > gw * 0.325) then
    v.alpha = v.alpha + 0.0025 * modManager.getSpeed()
    end
  end
  for i, v in ipairs(listOfSliders) do
    if (v.direction == 4 and v.tempPosition < gh * 0.815) or (v.direction == 2 and v.tempPosition > gh * 0.185) or
      (v.direction == 1 and v.tempPosition < gw * 0.675) or (v.direction == 3 and v.tempPosition > gw * 0.325) then
    v.alpha = v.alpha + 0.0025 * modManager.getSpeed()
    end
  end
end

return Flashlight
