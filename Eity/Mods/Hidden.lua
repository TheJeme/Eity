hidden = {}


function hidden.ApplyMod(dt)
  for i, v in ipairs(listOfArrows) do
    v.alpha = v.alpha - 0.0025 * modManager.getSpeed()
  end
  for i, v in ipairs(listOfSliders) do
    v.alpha = v.alpha - 0.0025 * modManager.getSpeed()
  end
end

return hidden
