Hidden = {}


function Hidden.ApplyMod(dt)
  for i, v in ipairs(listOfArrows) do
    v.alpha = v.alpha - 0.0025 * ModManager.getSpeed()
  end
  for i, v in ipairs(listOfSliders) do
    v.alpha = v.alpha - 0.0025 * ModManager.getSpeed()
  end
end

return Hidden
