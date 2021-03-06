map = { }
 
function map:getBackground()
  return "maps/Paradigm Shift/bg.jpg"
end

function map:getTitle()
  return "Paradigm Shift"
end

function map:getDifficult()
  return "Hard"
end
 
function map:getPorter()
  return "Fractal Dreamers"
end

function map:getSong()
  return "maps/Paradigm Shift/song.mp3"
end
 
function map:getLength()  
  return 195
end

function map:getNotes()        
  -- (0 = none, 1 = normal, 2 = reverse, 3 = bad), (448 = up, 64 = down, 192 = left, 320 = right), speed, slider length, milliseconds to spawn
  return {
    {1, 320, 700, 0, 3177},
    {1, 448, 700, 0, 5977},
    {1, 64, 700, 0, 9177},
    {1, 320, 700, 0, 12877},
    {1, 448, 700, 0, 14177},
    {1, 192, 700, 0, 17177},
    {1, 448, 700, 0, 19177},
    {1, 64, 700, 0, 19777},
    {1, 192, 700, 0, 20077},
    {1, 320, 700, 0, 20677},
    {1, 320, 700, 0, 20977},
    {1, 448, 700, 0, 21577},
    {1, 192, 700, 0, 22177},
    {1, 448, 700, 0, 22477},
    {1, 320, 700, 0, 23077},
    {1, 192, 700, 0, 23377},
    {1, 448, 700, 0, 23827},
    {1, 448, 700, 0, 23977},
    {1, 192, 700, 0, 24577},
    {1, 448, 700, 0, 24877},
    {1, 192, 700, 0, 25477},
    {1, 320, 700, 0, 25777},
    {1, 448, 700, 0, 26377},
    {1, 192, 700, 0, 26977},
    {1, 320, 700, 0, 27277},
    {1, 448, 700, 0, 27577},
    {1, 64, 700, 0, 29977},
    {1, 192, 700, 0, 30427},
    {1, 448, 700, 0, 30577},
    {1, 64, 700, 0, 31177},
    {1, 64, 700, 0, 31627},
    {1, 64, 700, 0, 31777},
    {1, 320, 700, 0, 32377},
    {1, 64, 700, 0, 32827},
    {1, 448, 700, 0, 32977},
    {1, 192, 700, 0, 33577},
    {1, 448, 700, 0, 34027},
    {1, 64, 700, 0, 34477},
    {1, 64, 700, 0, 34777},
    {1, 320, 700, 0, 35227},
    {1, 448, 700, 0, 35377},
    {1, 192, 700, 0, 35977},
    {1, 448, 700, 0, 36427},
    {1, 320, 700, 0, 36577},
    {3, 448, 700, 0, 36677},
    {1, 320, 700, 0, 37177},
    {1, 192, 700, 0, 37627},
    {1, 64, 700, 0, 37777},
    {1, 320, 700, 0, 38377},
    {1, 192, 700, 0, 38827},
    {3, 448, 700, 0, 38927},
    {1, 320, 700, 0, 39277},
    {1, 192, 700, 0, 39577},
    {1, 64, 700, 0, 40027},
    {3, 192, 700, 0, 40127},
    {1, 448, 700, 0, 40177},
    {1, 192, 700, 0, 40777},
    {1, 320, 700, 0, 41227},
    {3, 64, 700, 0, 41327},
    {1, 192, 700, 0, 41377},
    {1, 64, 700, 0, 41977},
    {1, 448, 700, 0, 42577},
    {1, 64, 700, 0, 43177},
    {1, 64, 700, 0, 43627},
    {3, 448, 700, 0, 43727},
    {1, 64, 700, 0, 44377},
    {1, 64, 700, 0, 44977},
    {1, 192, 700, 0, 45427},
    {1, 448, 700, 0, 45577},
    {1, 192, 700, 0, 46177},
    {3, 64, 700, 0, 46277},
    {1, 320, 700, 0, 46477},
    {1, 448, 700, 0, 46777},
    {1, 64, 700, 0, 47977},
    {1, 192, 700, 0, 48577},
    {1, 320, 700, 0, 48877},
    {1, 64, 700, 0, 49177},
    {1, 192, 700, 0, 50077},
    {1, 448, 700, 0, 50377},
    {3, 192, 700, 0, 50477},
    {1, 64, 700, 0, 50827},
    {1, 320, 700, 0, 51277},
    {1, 192, 700, 0, 51577},
    {1, 320, 700, 0, 52027},
    {1, 64, 700, 0, 52177},
    {3, 448, 700, 0, 52277},
    {1, 192, 700, 0, 52777},
    {1, 320, 700, 0, 53227},
    {1, 64, 700, 0, 53677},
    {1, 320, 700, 0, 53977},
    {1, 64, 700, 0, 54427},
    {1, 320, 700, 0, 54577},
    {1, 448, 700, 0, 55177},
    {1, 192, 700, 0, 55627},
    {1, 64, 700, 0, 55777},
    {1, 320, 700, 0, 56377},
    {3, 192, 700, 0, 56477},
    {1, 320, 700, 0, 57277},
    {1, 320, 700, 0, 57577},
    {1, 64, 700, 0, 58027},
    {1, 320, 700, 0, 58477},
    {1, 192, 700, 0, 58777},
    {3, 320, 700, 0, 58877},
    {1, 448, 700, 0, 59077},
    {1, 64, 700, 0, 59377},
    {1, 64, 700, 0, 59977},
    {1, 320, 700, 0, 60427},
    {1, 192, 700, 0, 60877},
    {1, 448, 700, 0, 61177},
    {1, 192, 700, 0, 61777},
    {1, 448, 700, 0, 62077},
    {1, 64, 700, 0, 62377},
    {1, 320, 700, 0, 62827},
    {3, 192, 700, 0, 62927},
    {1, 64, 700, 0, 63277},
    {1, 448, 700, 0, 63577},
    {1, 320, 700, 0, 64777},
    {1, 192, 700, 0, 65377},
    {1, 192, 700, 0, 65977},
    {1, 192, 700, 0, 67177},
    {3, 320, 700, 0, 67277},
    {1, 448, 700, 0, 68377},
    {1, 320, 700, 0, 68827},
    {1, 192, 700, 0, 68977},
    {1, 64, 700, 0, 69427},
    {1, 320, 700, 0, 69877},
    {3, 448, 700, 0, 69977},
    {1, 64, 700, 0, 70177},
    {1, 64, 700, 0, 70777},
    {1, 448, 700, 0, 71677},
    {1, 64, 700, 0, 71827},
    {1, 192, 700, 0, 72277},
    {1, 320, 700, 0, 72577},
    {1, 192, 700, 0, 73177},
    {1, 320, 700, 0, 73627},
    {1, 192, 700, 0, 73777},
    {3, 448, 700, 0, 73877},
    {1, 320, 700, 0, 74227},
    {1, 64, 700, 0, 74677},
    {1, 192, 700, 0, 74977},
    {1, 448, 700, 0, 75577},
    {3, 64, 700, 0, 75677},
    {1, 320, 700, 0, 76477},
    {3, 448, 700, 0, 76577},
    {1, 64, 700, 0, 76627},
    {1, 192, 700, 0, 77077},
    {1, 320, 700, 0, 77377},
    {1, 192, 700, 0, 77977},
    {3, 64, 700, 0, 78097},
    {1, 448, 700, 0, 78427},
    {1, 320, 700, 0, 78577},
    {1, 192, 700, 0, 79027},
    {1, 64, 700, 0, 79477},
    {1, 448, 700, 0, 79777},
    {1, 320, 700, 0, 80377},
    {1, 64, 700, 0, 81277},
    {1, 64, 700, 0, 81427},
    {1, 192, 700, 0, 81877},
    {1, 320, 700, 0, 82177},
    {3, 64, 700, 0, 82277},
    {3, 64, 700, 0, 82877},
    {1, 192, 700, 0, 83227},
    {1, 192, 700, 0, 83377},
    {1, 64, 700, 0, 83827},
    {1, 320, 700, 0, 84277},
    {1, 448, 700, 0, 84577},
    {3, 320, 700, 0, 84677},
    {1, 448, 700, 0, 85177},
    {1, 64, 700, 0, 86077},
    {1, 192, 700, 0, 86227},
    {1, 448, 700, 0, 86677},
    {3, 320, 700, 0, 86777},
    {1, 192, 700, 0, 86977},
    {1, 192, 700, 0, 87577},
    {1, 448, 700, 0, 97177},
    {1, 320, 700, 0, 98977},
    {1, 64, 700, 0, 99577},
    {3, 320, 700, 0, 99677},
    {1, 192, 700, 0, 100027},
    {1, 64, 700, 0, 100477},
    {1, 192, 700, 0, 100777},
    {3, 64, 700, 0, 100877},
    {1, 320, 700, 0, 101227},
    {1, 64, 700, 0, 101677},
    {1, 448, 700, 0, 101977},
    {1, 64, 700, 0, 102277},
    {1, 320, 700, 0, 102577},
    {1, 192, 700, 0, 102877},
    {1, 448, 700, 0, 103027},
    {1, 192, 700, 0, 103927},
    {1, 192, 700, 0, 104077},
    {1, 64, 700, 0, 104377},
    {3, 192, 700, 0, 104477},
    {1, 320, 700, 0, 104827},
    {3, 64, 700, 0, 104927},
    {1, 448, 700, 0, 105277},
    {1, 448, 700, 0, 105577},
    {1, 320, 700, 0, 106027},
    {1, 64, 700, 0, 106477},
    {1, 192, 700, 0, 106777},
    {1, 64, 700, 0, 107077},
    {1, 192, 700, 0, 107227},
    {1, 448, 700, 0, 107677},
    {1, 64, 700, 0, 109177},
    {3, 192, 700, 0, 109277},
    {1, 320, 700, 0, 109627},
    {1, 448, 700, 0, 110077},
    {1, 320, 700, 0, 110377},
    {1, 64, 700, 0, 110827},
    {3, 448, 700, 0, 110927},
    {1, 64, 700, 0, 111277},
    {1, 64, 700, 0, 111577},
    {1, 448, 700, 0, 111877},
    {1, 192, 700, 0, 112027},
    {1, 448, 700, 0, 112477},
    {1, 64, 700, 0, 112777},
    {1, 320, 700, 0, 113077},
    {1, 192, 700, 0, 113227},
    {1, 448, 700, 0, 113677},
    {1, 64, 700, 0, 113977},
    {1, 64, 700, 0, 114427},
    {1, 448, 700, 0, 114877},
    {3, 320, 700, 0, 114977},
    {1, 192, 700, 0, 115177},
    {1, 320, 700, 0, 115627},
    {1, 192, 700, 0, 116077},
    {1, 192, 700, 0, 116377},
    {1, 448, 700, 0, 116977},
    {1, 320, 700, 0, 117277},
    {1, 64, 700, 0, 117577},
    {1, 192, 700, 0, 117727},
    {3, 64, 700, 0, 117827},
    {1, 320, 700, 0, 118477},
    {1, 192, 700, 0, 118777},
    {1, 192, 700, 0, 119377},
    {3, 64, 700, 0, 119927},
    {1, 320, 700, 0, 120577},
    {3, 192, 700, 0, 121177},
    {1, 320, 700, 0, 122377},
    {1, 320, 700, 0, 123127},
    {1, 320, 700, 0, 123577},
    {1, 192, 700, 0, 123877},
    {1, 64, 700, 0, 124327},
    {1, 448, 700, 0, 124477},
    {1, 64, 700, 0, 124777},
    {1, 320, 700, 0, 125377},
    {1, 64, 700, 0, 125827},
    {1, 448, 700, 0, 125977},
    {1, 192, 700, 0, 127177},
    {3, 320, 700, 0, 127277},
    {1, 64, 700, 0, 127777},
    {1, 448, 700, 0, 128077},
    {1, 192, 700, 0, 128377},
    {1, 64, 700, 0, 128977},
    {1, 448, 700, 0, 129427},
    {1, 320, 700, 0, 129577},
    {1, 64, 700, 0, 130177},
    {1, 448, 700, 0, 130477},
    {3, 320, 700, 0, 130577},
    {1, 64, 700, 0, 130777},
    {1, 192, 700, 0, 131977},
    {1, 192, 700, 0, 132877},
    {1, 192, 700, 0, 133177},
    {3, 448, 700, 0, 133277},
    {1, 320, 700, 0, 133777},
    {1, 64, 700, 0, 133927},
    {1, 192, 700, 0, 134227},
    {1, 192, 700, 0, 134377},
    {1, 64, 700, 0, 134977},
    {1, 192, 700, 0, 135577},
    {3, 64, 700, 0, 135677},
    {1, 448, 700, 0, 136027},
    {1, 64, 700, 0, 136777},
    {1, 192, 700, 0, 137227},
    {1, 320, 700, 0, 137677},
    {1, 448, 700, 0, 137977},
    {1, 64, 700, 0, 147577},
    {1, 320, 700, 0, 148477},
    {3, 64, 700, 0, 148577},
    {1, 192, 700, 0, 148777},
    {1, 448, 700, 0, 149677},
    {1, 192, 700, 0, 149977},
    {1, 192, 700, 0, 150877},
    {3, 64, 700, 0, 150977},
    {1, 320, 700, 0, 151177},
    {1, 64, 700, 0, 151777},
    {1, 448, 700, 0, 152227},
    {1, 192, 700, 0, 152377},
    {1, 192, 700, 0, 153277},
    {1, 448, 700, 0, 153577},
    {1, 64, 700, 0, 154177},
    {1, 448, 700, 0, 154477},
    {1, 320, 700, 0, 154777},
    {3, 448, 700, 0, 154977},
    {1, 192, 700, 0, 155377},
    {1, 448, 700, 0, 155977},
    {3, 320, 700, 0, 156097},
    {1, 192, 700, 0, 157177},
    {1, 448, 700, 0, 157627},
    {3, 64, 700, 0, 157777},
    {1, 320, 700, 0, 158377},
    {1, 192, 700, 0, 158827},
    {1, 64, 700, 0, 159277},
    {1, 192, 700, 0, 159577},
    {1, 64, 700, 0, 160027},
    {3, 192, 700, 0, 160127},
    {1, 448, 700, 0, 160177},
    {1, 320, 700, 0, 160477},
    {1, 64, 700, 0, 160777},
    {3, 192, 700, 0, 160877},
    {1, 448, 700, 0, 160927},
    {1, 192, 700, 0, 161677},
    {1, 64, 700, 0, 161977},
    {1, 320, 700, 0, 162427},
    {1, 448, 700, 0, 162577},
    {1, 64, 700, 0, 163177},
    {3, 320, 700, 0, 163277},
    {1, 192, 700, 0, 163627},
    {1, 320, 700, 0, 164077},
    {1, 64, 700, 0, 164377},
    {1, 192, 700, 0, 164677},
    {3, 320, 700, 0, 164777},
    {1, 448, 700, 0, 164977},
    {1, 192, 700, 0, 165277},
    {3, 320, 700, 0, 165577},
    {1, 64, 700, 0, 165727},
    {1, 192, 700, 0, 166327},
    {1, 448, 700, 0, 166777},
    {1, 192, 700, 0, 167227},
    {3, 320, 700, 0, 167677},
    {1, 192, 700, 0, 167977},
    {3, 448, 700, 0, 167997},
    {1, 64, 700, 0, 168427},
    {1, 320, 700, 0, 168877},
    {3, 448, 700, 0, 168977},
    {1, 192, 700, 0, 169177},
    {1, 64, 700, 0, 169477},
    {1, 320, 700, 0, 169627},
    {3, 64, 700, 0, 169727},
    {1, 448, 700, 0, 170077},
    {1, 320, 700, 0, 170377},
    {3, 192, 700, 0, 170677},
    {1, 64, 700, 0, 170827},
    {1, 448, 700, 0, 171277},
    {1, 448, 700, 0, 171577},
    {3, 320, 700, 0, 171677},
    {1, 192, 700, 0, 172027},
    {1, 64, 700, 0, 172477},
    {3, 320, 700, 0, 172777},
    {1, 448, 700, 0, 173227},
    {1, 192, 700, 0, 173497},
    {1, 320, 700, 0, 173677},
    {3, 192, 700, 0, 173977},
    {1, 448, 700, 0, 174277},
    {1, 64, 700, 0, 175027},
    {1, 192, 700, 0, 176377},
    {3, 320, 700, 0, 176497},
    {1, 192, 700, 0, 176827},
    {1, 448, 700, 0, 176977},
    {1, 64, 700, 0, 177577},
    {1, 320, 700, 0, 178027},
    {1, 448, 700, 0, 178177},
    {1, 64, 700, 0, 178777},
    {1, 64, 700, 0, 179227},
    {1, 448, 700, 0, 179377},
    {3, 320, 700, 0, 179477},
    {1, 448, 700, 0, 179977},
    {1, 64, 700, 0, 180427},
    {1, 448, 700, 0, 180877},
    {1, 320, 700, 0, 181177},
    {1, 448, 700, 0, 181627},
    {1, 448, 700, 0, 181777},
    {1, 448, 700, 0, 182377},
    {1, 448, 700, 0, 182827},
    {1, 64, 700, 0, 182977},
    {1, 192, 700, 0, 183577},
    {3, 64, 700, 0, 183699},
    {1, 448, 700, 0, 184027},
    {1, 448, 700, 0, 184177},
    {1, 448, 700, 0, 184777},
    {1, 192, 700, 0, 185227},
    {1, 448, 700, 0, 185677},
    {1, 448, 700, 0, 185977},
    {1, 64, 700, 0, 186427},
    {1, 448, 700, 0, 186577},
    {1, 448, 700, 0, 187177},
    {1, 448, 700, 0, 187627},
    {3, 64, 700, 0, 187727},
    {1, 192, 700, 0, 187777},
    {1, 448, 700, 0, 188377},
    {1, 448, 700, 0, 188827},
    {1, 448, 700, 0, 188977},
    {1, 64, 700, 0, 189577},
    {1, 192, 700, 0, 190027},
    {1, 64, 700, 0, 190477},
    {1, 448, 700, 0, 190777},
    {1, 64, 700, 0, 191227},
    {3, 320, 700, 0, 191327},
    {1, 192, 700, 0, 191377},
    {1, 192, 700, 0, 191977},
    {1, 448, 700, 0, 192427},
    {1, 64, 700, 0, 192577},
    {1, 64, 700, 0, 193177},
    {1, 192, 700, 0, 193327},    
  }
end

return map
