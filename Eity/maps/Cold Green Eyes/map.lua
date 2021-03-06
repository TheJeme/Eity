map = { }
 
function map:getBackground()
  return "maps/Cold Green Eyes/bg.jpg"
end

function map:getTitle()
  return "Cold Green Eyes"
end

function map:getDifficult()
  return "Normal"
end
 
function map:getPorter()
  return "Station Earth"
end

function map:getSong()
  return "maps/Cold Green Eyes/song.mp3"
end
 
function map:getLength()  
  return 132
end
 
function map:getNotes()        
  -- (0 = none, 1 = normal, 2 = reverse, 3 = bad), (448 = up, 64 = down, 192 = left, 320 = right), speed, slider length, milliseconds to spawn
  return {
    {3, 252, 600, 0, 4925},
    {3, 293, 600, 0, 6925},
    {3, 32, 600, 0, 8925},
    {3, 321, 600, 0, 10425},
    {3, 184, 600, 0, 11925},
    {3, 424, 600, 0, 12325},
    {3, 92, 600, 0, 14325},
    {3, 188, 600, 0, 15925},
    {3, 256, 600, 0, 16660},
    {3, 20, 600, 0, 17660},
    {3, 213, 600, 0, 18660},
    {3, 45, 600, 0, 19660},
    {3, 256, 600, 0, 20660},
    {3, 13, 600, 0, 21925},
    {3, 144, 600, 0, 22097},
    {1, 52, 600, 0, 22177},
    {1, 92, 600, 0, 22695},
    {1, 240, 600, 0, 23212},
    {1, 292, 600, 0, 23557},
    {1, 380, 600, 0, 24591},
    {1, 460, 600, 0, 24936},
    {1, 424, 600, 0, 25453},
    {1, 184, 600, 0, 26315},
    {1, 92, 600, 0, 27350},
    {1, 20, 600, 0, 27695},
    {1, 4, 600, 0, 28212},
    {1, 188, 600, 0, 29074},
    {1, 236, 600, 0, 29419},
    {1, 252, 600, 0, 29936},
    {1, 392, 600, 0, 30453},
    {1, 316, 600, 0, 31488},
    {1, 248, 600, 0, 31833},
    {1, 280, 600, 0, 32522},
    {1, 472, 600, 0, 33212},
    {1, 444, 600, 0, 33902},
    {1, 300, 600, 0, 34419},
    {1, 300, 600, 0, 34591},
    {1, 276, 600, 0, 35109},
    {1, 236, 600, 0, 35971},
    {1, 52, 600, 0, 36660},
    {1, 20, 600, 0, 37177},
    {1, 20, 600, 0, 37350},
    {1, 112, 600, 0, 37867},
    {1, 356, 600, 0, 38729},
    {1, 364, 600, 0, 39764},
    {1, 372, 600, 0, 40109},
    {1, 280, 600, 0, 40453},
    {1, 316, 600, 0, 40971},
    {1, 268, 600, 0, 41488},
    {1, 120, 600, 0, 42005},
    {1, 36, 600, 0, 42867},
    {1, 116, 600, 0, 43212},
    {1, 188, 600, 0, 43902},
    {1, 108, 600, 0, 44246},
    {1, 188, 600, 0, 44591},
    {1, 384, 600, 0, 45281},
    {1, 472, 600, 0, 45626},
    {1, 392, 600, 0, 46315},
    {1, 320, 600, 0, 47005},
    {1, 160, 600, 0, 47695},
    {1, 92, 600, 0, 48384},
    {1, 55, 600, 0, 49246},
    {1, 55, 600, 0, 49419},
    {1, 120, 600, 0, 49764},
    {1, 200, 600, 0, 50109},
    {1, 394, 600, 0, 50798},
    {1, 460, 600, 0, 51143},
    {1, 332, 600, 0, 51833},
    {1, 260, 600, 0, 52522},
    {1, 72, 600, 0, 53212},
    {1, 148, 600, 0, 53902},
    {1, 124, 600, 0, 54419},
    {1, 268, 600, 0, 54936},
    {1, 368, 600, 0, 55281},
    {1, 448, 600, 0, 55626},
    {1, 440, 600, 0, 56315},
    {1, 364, 600, 0, 56660},
    {1, 172, 600, 0, 57350},
    {1, 256, 600, 0, 58040},
    {1, 168, 600, 0, 58729},
    {1, 260, 600, 0, 59419},
    {1, 224, 600, 0, 60281},
    {1, 224, 600, 0, 60453},
    {1, 288, 600, 0, 60798},
    {1, 220, 600, 0, 61143},
    {1, 24, 600, 0, 61833},
    {1, 60, 600, 0, 62177},
    {1, 136, 600, 0, 62867},
    {1, 208, 600, 0, 63557},
    {1, 388, 600, 0, 64246},
    {1, 320, 600, 0, 64936},
    {1, 292, 600, 0, 65453},
    {1, 152, 600, 0, 65971},
    {1, 52, 600, 0, 66315},
    {1, 100, 600, 0, 66660},
    {1, 152, 600, 0, 67350},
    {1, 348, 600, 0, 68040},
    {1, 448, 600, 0, 68384},
    {1, 388, 600, 0, 69074},
    {1, 460, 600, 0, 69419},
    {1, 420, 600, 0, 70109},
    {1, 252, 600, 0, 70798},
    {1, 328, 600, 0, 71143},
    {1, 232, 600, 0, 71833},
    {1, 240, 600, 0, 72350},
    {1, 92, 600, 0, 72867},
    {1, 24, 600, 0, 73212},
    {1, 104, 600, 0, 73557},
    {1, 72, 600, 0, 74074},
    {1, 120, 600, 0, 74591},
    {1, 308, 600, 0, 75281},
    {1, 224, 600, 0, 75971},
    {1, 251, 600, 0, 76488},
    {1, 398, 600, 0, 77005},
    {1, 468, 600, 0, 77350},
    {1, 368, 600, 0, 78040},
    {1, 344, 600, 0, 78557},
    {1, 344, 600, 0, 78729},
    {1, 212, 600, 0, 79246},
    {1, 185, 600, 0, 79764},
    {1, 200, 600, 0, 80109},
    {1, 396, 600, 0, 80798},
    {1, 364, 600, 0, 81315},
    {1, 364, 600, 0, 81488},
    {1, 384, 600, 0, 82005},
    {1, 236, 600, 0, 82522},
    {1, 140, 600, 0, 82867},
    {1, 124, 600, 0, 83212},
    {1, 192, 600, 0, 83557},
    {1, 252, 600, 0, 84246},
    {1, 420, 600, 0, 84936},
    {1, 448, 600, 0, 85453},
    {1, 448, 600, 0, 85626},
    {1, 444, 600, 0, 86143},
    {1, 300, 600, 0, 86660},
    {1, 204, 600, 0, 87005},
    {1, 112, 600, 0, 87350},
    {1, 156, 600, 0, 87867},
    {1, 156, 600, 0, 88040},
    {1, 136, 600, 0, 88384},
    {1, 232, 600, 0, 88729},
    {1, 424, 600, 0, 89419},
    {1, 504, 600, 0, 89764},
    {1, 476, 600, 0, 90453},
    {1, 396, 600, 0, 91143},
    {1, 312, 600, 0, 91488},
    {1, 116, 600, 0, 92177},
    {1, 28, 600, 0, 92522},
    {1, 48, 600, 0, 93040},
    {1, 108, 600, 0, 93557},
    {1, 192, 600, 0, 93902},
    {1, 276, 600, 0, 94246},
    {1, 268, 600, 0, 94936},
    {1, 188, 600, 0, 95281},
    {1, 20, 600, 0, 95971},
    {1, 68, 600, 0, 96660},
    {1, 140, 600, 0, 97005},
    {1, 132, 600, 0, 97695},
    {1, 36, 600, 0, 98040},
    {1, 64, 600, 0, 98557},
    {1, 204, 600, 0, 99074},
    {1, 301, 600, 0, 99419},
    {1, 384, 600, 0, 99764},
    {1, 364, 600, 0, 100453},
    {1, 276, 600, 0, 100798},
    {1, 92, 600, 0, 101488},
    {1, 180, 600, 0, 102177},
    {1, 92, 600, 0, 102522},
    {1, 144, 600, 0, 103212},
    {1, 224, 600, 0, 103557},
    {1, 372, 600, 0, 104074},
    {1, 392, 600, 0, 104591},
    {1, 328, 600, 0, 104936},
    {1, 292, 600, 0, 105281},
    {1, 96, 600, 0, 105971},
    {1, 40, 600, 0, 106315},
    {1, 156, 600, 0, 107005},
    {1, 256, 600, 0, 107695},
    {1, 156, 600, 0, 111488},
    {1, 244, 600, 0, 111833},
    {1, 184, 600, 0, 112867},
    {1, 104, 600, 0, 113212},
    {1, 132, 600, 0, 113729},
    {1, 208, 600, 0, 114591},
    {1, 476, 600, 0, 115626},
    {1, 500, 600, 0, 115971},
    {1, 448, 600, 0, 116488},
    {1, 200, 600, 0, 117350},
    {1, 116, 600, 0, 117695},
    {1, 156, 600, 0, 118212},
    {1, 96, 600, 0, 118729},
    {1, 256, 600, 0, 118902},
    {1, 96, 600, 0, 122522},
    {1, 168, 600, 0, 122867},
    {1, 92, 600, 0, 124246},
    {1, 160, 600, 0, 124936},
    {1, 296, 600, 0, 125453},
    {1, 296, 600, 0, 125626},
    {1, 364, 600, 0, 126488},
    {1, 484, 600, 0, 127005},
    {1, 416, 600, 0, 128729},
    {1, 336, 600, 0, 129074},
    {1, 176, 600, 0, 129764},
    {1, 64, 600, 0, 131143},
    {1, 64, 600, 0, 131229},
  }
end

return map
