map = { }
 
function map:getBackground()
  return "maps/Elaman koulu/bg.png"
end

function map:getDifficult()
  return "Hard"
end

function map:getTitle()
 return "Elämänkoulu"
end
 
function map:getPorter()
 return "Nisku ja Jasku"
end

function map:getSong()
 return "maps/Elaman koulu/song.mp3"
end
 
function map:getNotes()      
  
  -- (0 = none, 1 = normal, 2 = reverse, 3 = bad), (448 = up, 64 = down, 192 = left, 320 = right), speed, slider length, milliseconds to spawn
  return { 
	{1, 192, 500, 0, 4631},
	{3, 448, 500, 0, 4631},
	{1, 064, 500, 0, 5006},
	{1, 320, 500, 0, 5193},
	{1, 448, 500, 0, 5568},
	{1, 192, 500, 0, 5756},
	{1, 448, 500, 0, 6131},
	{1, 064, 500, 0, 6318},
	{1, 320, 500, 0, 6693},
	{1, 192, 500, 0, 6881},
	{1, 320, 500, 0, 7256},
	{1, 064, 500, 0, 7631},
	{3, 448, 500, 0, 7631},
	{1, 192, 500, 0, 8006},
	{1, 320, 500, 0, 8193},
	{1, 448, 500, 0, 8568},
	{1, 064, 500, 0, 8756},
	{1, 320, 500, 0, 9131},
	{1, 192, 500, 0, 9318},
	{1, 320, 500, 0, 9693},
	{1, 064, 500, 0, 9881},
	{1, 448, 500, 0, 10256},
	{1, 320, 500, 0, 10631},
	{3, 192, 500, 0, 10631},
	{1, 064, 500, 0, 11006},
	{1, 192, 500, 0, 11381},
	{1, 448, 500, 0, 11756},
	{1, 320, 500, 0, 12131},
	{1, 064, 500, 0, 12318},
	{1, 192, 500, 0, 12506},
	{1, 448, 500, 0, 12693},
	{1, 064, 500, 0, 12881},
	{1, 320, 500, 0, 13068},
	{1, 192, 500, 0, 13256},
	{1, 064, 500, 0, 13443},
	{1, 448, 500, 0, 13631},
	{1, 064, 500, 0, 14006},
	{1, 192, 500, 0, 14381},
	{1, 448, 500, 0, 14756},
	{1, 320, 500, 0, 15131},
	{1, 064, 500, 0, 15506},
	{1, 448, 500, 0, 15881},
	{1, 192, 500, 0, 16256},
	{1, 064, 500, 0, 16631},
	{3, 448, 500, 0, 16631},
	{1, 320, 500, 0, 17006},
	{1, 064, 500, 0, 17381},
	{1, 192, 500, 0, 17756},
	{1, 320, 500, 0, 18131},
	{1, 064, 500, 0, 18318},
	{1, 448, 500, 0, 18506},
	{1, 192, 500, 0, 18693},
	{1, 320, 500, 0, 18881},
	{1, 064, 500, 0, 19068},
	{1, 320, 500, 0, 19256},
	{1, 192, 500, 0, 19443},
	{1, 448, 500, 0, 19631},
	{1, 320, 500, 0, 20006},
	{1, 064, 500, 0, 20381},
	{1, 192, 500, 0, 20756},
	{1, 448, 500, 0, 21131},
	{1, 064, 500, 0, 21506},
	{1, 320, 500, 0, 21881},
	{1, 192, 500, 0, 22256},
	{1, 064, 500, 0, 22631},
	{3, 448, 500, 0, 22631},
	{1, 320, 500, 0, 23006},
	{1, 192, 500, 0, 23381},
	{1, 320, 500, 0, 23756},
	{1, 064, 500, 0, 24131},
	{1, 192, 500, 0, 24506},
	{1, 320, 500, 0, 24881},
	{1, 064, 500, 0, 25256},
	{1, 192, 500, 0, 25443},
	{1, 064, 500, 0, 25631},
	{3, 320, 500, 0, 25631},
	{1, 192, 500, 0, 26006},
	{1, 320, 500, 0, 26381},
	{1, 448, 500, 0, 26756},
	{1, 064, 500, 0, 27026},
	{1, 448, 500, 0, 27396},
	{1, 192, 500, 0, 27556},
  {1, 192, 500, 0, 27746},
  {1, 448, 500, 0, 27986},
  {1, 320, 500, 0, 28206},
  {1, 192, 500, 0, 28486},
  {1, 320, 500, 0, 28886},
  {1, 192, 500, 0, 29086},
  {1, 064, 500, 0, 29486},
  {1, 064, 500, 0, 29786},
  {1, 448, 500, 0, 30071},
  {1, 064, 500, 0, 30351},
  {1, 192, 500, 0, 30723},
  {1, 192, 500, 0, 30967},
  {1, 320, 500, 0, 31205},
  {1, 320, 500, 0, 31501},
  {1, 448, 500, 0, 31843},
  {1, 320, 500, 0, 32000},
  {1, 448, 500, 0, 32300},
  {1, 192, 500, 0, 32600},
  {1, 448, 500, 0, 32850},
  {1, 064, 500, 0, 33002},
  {1, 192, 500, 0, 33560},
  {1, 448, 500, 0, 33870},
  {1, 064, 500, 0, 34170},
  {1, 192, 500, 0, 34470},
  {1, 320, 500, 0, 34770},
  {1, 320, 500, 0, 35000},
  {1, 448, 500, 0, 35200},
  {1, 192, 500, 0, 35400},
  {1, 448, 500, 0, 35600},
  {1, 192, 500, 0, 35800},
  {1, 448, 500, 0, 36000},
  {1, 064, 500, 0, 36200},
  {1, 448, 500, 0, 36400},
  {1, 320, 500, 0, 36600},
  {1, 192, 500, 0, 37000},
  {1, 064, 500, 0, 37256},
  {1, 064, 500, 0, 37545},
	{1, 320, 500, 400, 37631},
	{1, 192, 500, 400, 39131},
	{1, 320, 500, 0, 41006},
	{1, 064, 500, 0, 41381},
	{1, 448, 500, 0, 41756},
	{1, 192, 500, 0, 42131},
	{1, 320, 500, 0, 42506},
	{1, 064, 500, 0, 42881},
	{1, 192, 500, 0, 43256},
	{1, 448, 500, 0, 43631},
	{1, 064, 500, 0, 44006},
	{1, 320, 500, 0, 44381},
	{1, 448, 500, 0, 44756},
	{1, 064, 500, 0, 45131},
	{1, 064, 500, 0, 45506},
	{1, 320, 500, 0, 45881},
	{1, 320, 500, 0, 46256},
	{1, 448, 500, 0, 46631},
	{3, 064, 500, 0, 46631},
	{1, 192, 500, 0, 47006},
	{1, 320, 500, 0, 47381},
	{1, 064, 500, 0, 47756},
	{1, 448, 500, 0, 48131},
	{1, 320, 500, 0, 48506},
	{1, 064, 500, 0, 48881},
	{1, 448, 500, 0, 49256},
	{1, 192, 500, 0, 49631},
	{1, 320, 500, 0, 50006},
	{1, 064, 500, 0, 50381},
	{1, 192, 500, 0, 50756},
	{1, 448, 500, 0, 51131},
	{1, 320, 500, 0, 51506},
	{1, 192, 500, 0, 51881},
	{1, 320, 500, 0, 52256},
	{1, 448, 500, 0, 52631},
	{3, 064, 500, 0, 52631},
	{1, 192, 500, 0, 53006},
	{1, 448, 500, 0, 53381},
	{1, 064, 500, 0, 53756},
	{3, 320, 500, 0, 53756},
	{1, 192, 500, 0, 53943},
	{1, 448, 500, 0, 54318},
	{1, 064, 500, 0, 54693},
	{1, 320, 500, 0, 54881},
	{1, 192, 500, 0, 55256},
	{3, 448, 500, 0, 55256},
	{1, 064, 500, 0, 55631},
	{3, 320, 500, 0, 55631},
	{1, 448, 500, 0, 56006},
	{1, 192, 500, 0, 56381},
	{1, 448, 500, 0, 56756},
	{3, 320, 500, 0, 56756},
	{1, 064, 500, 0, 56943},
	{1, 192, 500, 0, 57318},
	{1, 320, 500, 0, 57506},
	{1, 064, 500, 0, 57693},
	{1, 448, 500, 0, 57881},
	{1, 192, 500, 0, 58256},
	{3, 320, 500, 0, 58256},
	{1, 064, 500, 0, 58631},
	{3, 448, 500, 0, 58631},
	{1, 192, 500, 0, 59006},
	{1, 320, 500, 0, 59381},
	{1, 064, 500, 0, 59756},
	{3, 192, 500, 0, 59756},
	{1, 448, 500, 0, 59943},
	{1, 320, 500, 0, 60318},
	{1, 064, 500, 0, 60693},
	{1, 192, 500, 0, 60881},
	{1, 064, 500, 0, 61256},
	{3, 448, 500, 0, 61256},
	{1, 192, 500, 0, 61631},
	{3, 320, 500, 0, 61631},
	{1, 448, 500, 0, 62006},
	{1, 064, 500, 0, 62381},
	{1, 448, 500, 0, 62756},
	{1, 320, 500, 0, 62943},
	{1, 192, 500, 0, 63131},
	{1, 320, 500, 0, 63506},
	{1, 064, 500, 0, 63881},
	{1, 192, 500, 0, 64256},
	{1, 320, 500, 0, 64443},
	{1, 064, 500, 0, 64631},
	{3, 448, 500, 0, 64631},
	{1, 192, 500, 0, 65006},
	{1, 320, 500, 0, 65381},
	{1, 064, 500, 0, 65756},
	{1, 448, 500, 0, 65943},
	{1, 192, 500, 0, 66131},
	{1, 320, 500, 0, 66506},
	{1, 064, 500, 0, 66881},
	{1, 448, 500, 0, 67256},
	{1, 064, 500, 0, 67631},
	{3, 192, 500, 0, 67631},
	{1, 448, 500, 0, 68006},
	{1, 192, 500, 0, 68381},
	{1, 320, 500, 0, 68756},
	{1, 192, 500, 0, 69131},
	{1, 320, 500, 0, 69506},
	{1, 448, 500, 0, 69881},
	{1, 320, 500, 0, 70256},
	{1, 448, 500, 0, 70631},
	{3, 064, 500, 0, 70631},
	{1, 448, 500, 0, 71568},
	{1, 064, 500, 0, 71756},
	{1, 320, 500, 0, 71943},
	{1, 064, 500, 0, 72131},
	{3, 192, 500, 0, 72131},
	{1, 448, 500, 0, 72412},
	{1, 192, 500, 0, 72693},
	{1, 448, 500, 0, 73068},
	{1, 320, 500, 0, 73256},
	{1, 064, 500, 0, 73443},
	{1, 448, 500, 0, 73631},
	{1, 192, 500, 0, 73912},
	{1, 320, 500, 0, 74193},
	{1, 064, 500, 0, 74568},
	{1, 320, 500, 0, 74756},
	{1, 192, 500, 0, 74943},
	{1, 064, 500, 0, 75131},
	{3, 448, 500, 0, 75131},
	{1, 320, 500, 0, 75412},
	{1, 192, 500, 0, 75693},
	{1, 064, 500, 0, 76068},
	{1, 448, 500, 0, 76256},
	{1, 192, 500, 0, 76443},
	{1, 320, 500, 0, 76631},
	{1, 064, 500, 0, 77006},
	{1, 192, 500, 0, 77193},
	{1, 448, 500, 0, 77381},
	{1, 064, 500, 0, 77568},
	{1, 320, 500, 0, 77756},
	{1, 192, 500, 0, 77943},
	{1, 448, 500, 0, 78131},
	{3, 064, 500, 0, 78131},
	{1, 320, 500, 0, 78412},
	{1, 192, 500, 0, 78693},
	{1, 320, 500, 0, 79068},
	{1, 064, 500, 0, 79256},
	{1, 448, 500, 0, 79443},
	{1, 192, 500, 0, 79631},
	{1, 320, 500, 0, 79912},
	{1, 064, 500, 0, 80193},
	{1, 448, 500, 0, 80568},
	{1, 064, 500, 0, 80756},
	{1, 320, 500, 0, 80943},
	{1, 064, 500, 0, 81131},
	{3, 448, 500, 0, 81131},
	{1, 192, 500, 0, 81412},
	{1, 320, 500, 0, 81693},
	{1, 448, 500, 0, 82068},
	{1, 192, 500, 0, 82256},
	{1, 320, 500, 0, 82443},
	{1, 064, 500, 0, 82631},
	{1, 448, 500, 0, 83006},
	{1, 320, 500, 0, 83193},
	{1, 192, 500, 0, 83756},
	{1, 064, 500, 0, 84131},
	{3, 448, 500, 0, 84131},
	{1, 064, 500, 0, 84506},
	{1, 320, 500, 0, 84881},
	{1, 320, 500, 0, 85256},
	{1, 192, 500, 0, 85631},
	{1, 192, 500, 0, 86006},
	{1, 448, 500, 0, 86193},
	{1, 064, 500, 0, 86381},
	{1, 320, 500, 0, 86756},
	{1, 192, 500, 0, 87131},
	{3, 448, 500, 0, 87131},
	{1, 192, 500, 0, 87506},
	{1, 064, 500, 0, 87881},
	{1, 064, 500, 0, 88256},
	{1, 320, 500, 0, 88631},
	{1, 320, 500, 0, 89006},
	{1, 064, 500, 0, 89193},
	{1, 448, 500, 0, 89381},
	{1, 192, 500, 0, 89756},
	{1, 320, 500, 0, 90131},
	{3, 064, 500, 0, 90131},
	{1, 064, 500, 0, 90506},
	{1, 320, 500, 0, 90881},
	{1, 320, 500, 0, 91256},
	{1, 448, 500, 0, 91631},
	{1, 320, 500, 0, 91818},
	{1, 192, 500, 0, 92006},
	{1, 320, 500, 0, 92193},
	{1, 448, 500, 0, 92381},
	{1, 192, 500, 0, 92756},
	{1, 320, 500, 0, 93131},
	{3, 064, 500, 0, 93131},
	{1, 064, 500, 0, 93506},
	{1, 448, 500, 0, 93881},
	{1, 448, 500, 0, 94256},
	{1, 064, 500, 0, 94631},
	{3, 320, 500, 0, 94631},
	{1, 192, 500, 0, 95006},
	{1, 448, 500, 0, 95381},
	{1, 320, 500, 0, 95756},
	{1, 448, 500, 0, 96131},
	{3, 192, 500, 0, 96131},
	{1, 320, 500, 0, 96881},
	{1, 192, 500, 0, 97256},
	{1, 064, 500, 0, 97818},
	{1, 320, 500, 0, 98193},
	{1, 192, 500, 0, 98568},
	{1, 320, 500, 0, 98943},
	{1, 064, 500, 0, 99131},
	{1, 192, 500, 0, 99506},
	{1, 320, 500, 0, 99881},
	{1, 448, 500, 0, 100256},
	{1, 064, 500, 0, 100631},
	{1, 192, 500, 0, 100818},
	{1, 448, 500, 0, 101006},
	{1, 064, 500, 0, 101193},
	{1, 320, 500, 0, 101381},
	{1, 192, 500, 0, 101568},
	{1, 448, 500, 0, 101756},
	{1, 064, 500, 0, 101943},
	{1, 320, 500, 0, 102131},
	{1, 448, 500, 0, 102506},
	{1, 064, 500, 0, 102881},
	{1, 320, 500, 0, 103256},
	{1, 192, 500, 0, 103631},
	{1, 448, 500, 0, 104006},
	{1, 064, 500, 0, 104381},
	{1, 192, 500, 0, 104756},
	{1, 448, 500, 0, 105131},
	{3, 064, 500, 0, 105131},
	{1, 320, 500, 0, 105506},
	{1, 192, 500, 0, 105881},
	{1, 448, 500, 0, 106256},
	{1, 064, 500, 0, 106631},
	{1, 448, 500, 0, 106818},
	{1, 192, 500, 0, 107006},
	{1, 320, 500, 0, 107193},
	{1, 064, 500, 0, 107381},
	{1, 192, 500, 0, 107568},
	{1, 320, 500, 0, 107756},
	{1, 448, 500, 0, 107943},
	{1, 192, 500, 0, 108131},
	{1, 064, 500, 0, 108506},
	{1, 320, 500, 0, 108881},
	{1, 192, 500, 0, 109256},
	{1, 448, 500, 0, 109631},
	{1, 192, 500, 0, 110006},
	{1, 064, 500, 0, 110381},
	{1, 320, 500, 0, 110756},
	{1, 192, 500, 0, 111131},
	{3, 448, 500, 0, 111131},
	{1, 064, 500, 0, 111506},
	{1, 448, 500, 0, 111881},
	{1, 192, 500, 0, 112256},
	{1, 320, 500, 0, 112631},
	{1, 064, 500, 0, 113006},
	{1, 448, 500, 800, 113381},
	{1, 064, 500, 0, 115631},
	{1, 192, 500, 0, 116006},
	{1, 320, 500, 0, 116381},
	{1, 448, 500, 0, 116756},
	{1, 064, 500, 0, 117131},
	{3, 192, 500, 0, 117131},
	{1, 320, 500, 0, 117506},
	{1, 192, 500, 0, 117881},
	{1, 064, 500, 0, 118256},
	{1, 448, 500, 0, 118631},
	{1, 192, 500, 0, 119006},
	{1, 320, 500, 0, 119381},
	{1, 064, 500, 0, 119756},
	{1, 448, 500, 0, 120131},
	{1, 320, 500, 0, 121443},
	{1, 192, 500, 0, 121631},
	{1, 320, 500, 0, 122381},
	{1, 064, 500, 0, 123131},
	{3, 448, 500, 0, 123131},
	{1, 320, 500, 0, 123506},
	{1, 192, 500, 0, 123881},
	{1, 448, 500, 0, 124256},
	{1, 064, 500, 0, 124631},
	{1, 448, 500, 0, 125006},
	{3, 320, 500, 0, 125006},
	{1, 192, 500, 0, 125381},
	{1, 064, 500, 0, 125756},
	{1, 448, 500, 0, 126131},
	{1, 192, 500, 0, 126506},
	{1, 320, 500, 0, 126881},
	{1, 064, 500, 0, 127256},
	{1, 448, 500, 0, 127631},
	{1, 192, 500, 0, 128006},
	{3, 064, 500, 0, 128006},
	{1, 320, 500, 0, 128381},
	{1, 192, 500, 0, 128756},
	{1, 064, 500, 0, 129131},
	{3, 448, 500, 0, 129131},
	{1, 320, 500, 0, 129506},
	{1, 192, 500, 0, 129881},
	{1, 448, 500, 0, 130256},
	{1, 064, 500, 0, 130631},
	{1, 320, 500, 0, 131006},
	{3, 192, 500, 0, 131006},
	{1, 448, 500, 0, 131381},
	{1, 064, 500, 0, 131756},
	{1, 192, 500, 0, 132131},
	{1, 320, 500, 0, 132506},
	{1, 064, 500, 0, 132881},
	{1, 192, 500, 0, 133256},
	{1, 448, 500, 0, 133631},
	{1, 320, 500, 0, 134006},
	{3, 192, 500, 0, 134006},
	{1, 064, 500, 0, 134381},
	{1, 448, 500, 0, 134756},
	{1, 064, 500, 0, 135131},
	{3, 320, 500, 0, 135131},
	{1, 192, 500, 0, 135506},
	{1, 448, 500, 0, 135881},
	{1, 320, 500, 0, 136256},
	{1, 192, 500, 0, 136256},
	{1, 064, 500, 0, 136443},
	{1, 448, 500, 0, 136818},
	{1, 320, 500, 0, 137193},
	{1, 192, 500, 0, 137381},
	{1, 320, 500, 0, 137756},
	{1, 448, 500, 0, 137756},
	{1, 192, 500, 0, 138131},
	{3, 064, 500, 0, 138131},
	{1, 448, 500, 0, 138506},
	{1, 320, 500, 0, 138881},
	{1, 448, 500, 0, 139256},
	{3, 064, 500, 0, 139256},
	{1, 192, 500, 0, 139443},
	{1, 320, 500, 0, 139818},
	{1, 064, 500, 0, 140193},
	{1, 320, 500, 0, 140381},
	{1, 192, 500, 0, 140756},
	{3, 448, 500, 0, 140756},
	{1, 064, 500, 0, 141131},
	{3, 320, 500, 0, 141131},
	{1, 192, 500, 0, 141506},
	{1, 320, 500, 0, 141881},
	{1, 448, 500, 0, 142256},
	{3, 192, 500, 0, 142256},
	{1, 064, 500, 0, 142443},
	{1, 320, 500, 0, 142818},
	{1, 192, 500, 0, 143193},
	{1, 448, 500, 0, 143381},
	{1, 064, 500, 0, 143756},
	{3, 192, 500, 0, 143756},
	{1, 320, 500, 0, 144131},
	{3, 448, 500, 0, 144131},
	{1, 064, 500, 0, 144506},
	{1, 192, 500, 0, 144881},
	{1, 320, 500, 0, 145256},
	{1, 064, 500, 0, 145443},
	{1, 192, 500, 0, 145631},
	{1, 448, 500, 0, 146006},
	{1, 064, 500, 0, 146381},
	{1, 448, 500, 0, 146756},
	{1, 320, 500, 0, 146943},
	{1, 064, 500, 0, 147131},
	{3, 192, 500, 0, 147131},
	{1, 320, 500, 0, 147506},
	{1, 192, 500, 0, 147881},
	{1, 320, 500, 0, 148256},
	{1, 064, 500, 0, 148443},
	{1, 448, 500, 0, 148631},
	{1, 320, 500, 0, 149006},
	{1, 064, 500, 0, 149381},
	{1, 192, 500, 0, 149756},
	{1, 448, 500, 0, 150131},
	{3, 320, 500, 0, 150131},
	{1, 064, 500, 0, 150506},
	{1, 320, 500, 0, 150881},
	{1, 064, 500, 0, 151256},
	{1, 192, 500, 0, 151631},
	{1, 320, 500, 0, 152006},
	{1, 064, 500, 0, 152381},
	{1, 320, 500, 0, 152756},
	{1, 064, 500, 0, 153131},
	{1, 192, 500, 0, 153506},
	{1, 448, 500, 0, 153881},
	{1, 320, 500, 0, 154068},
	{1, 064, 500, 0, 154256},
	{1, 192, 500, 0, 154443},
	{1, 320, 500, 0, 154631},
	{1, 448, 500, 0, 154631},
	{1, 064, 500, 0, 154912},
	{1, 448, 500, 0, 155193},
	{1, 320, 500, 0, 155568},
	{1, 064, 500, 0, 155756},
	{1, 448, 500, 0, 155943},
	{1, 192, 500, 0, 156131},
	{1, 320, 500, 0, 156412},
	{1, 064, 500, 0, 156693},
	{1, 192, 500, 0, 157068},
	{1, 448, 500, 0, 157256},
	{1, 064, 500, 0, 157443},
	{1, 192, 500, 0, 157631},
	{3, 320, 500, 0, 157631},
	{1, 448, 500, 0, 157912},
	{1, 064, 500, 0, 158193},
	{1, 192, 500, 0, 158568},
	{1, 320, 500, 0, 158756},
	{1, 448, 500, 0, 158943},
	{1, 320, 500, 0, 159131},
	{1, 064, 500, 0, 159506},
	{1, 192, 500, 0, 159693},
	{1, 448, 500, 0, 159881},
	{1, 064, 500, 0, 160068},
	{1, 320, 500, 0, 160256},
	{1, 192, 500, 0, 160443},
	{1, 064, 500, 0, 160631},
	{3, 448, 500, 0, 160631},
	{1, 320, 500, 0, 160912},
	{1, 192, 500, 0, 161193},
	{1, 064, 500, 0, 161568},
	{1, 320, 500, 0, 161756},
	{1, 192, 500, 0, 161943},
	{1, 448, 500, 0, 162131},
	{1, 064, 500, 0, 162412},
	{1, 320, 500, 0, 162693},
	{1, 192, 500, 0, 163068},
	{1, 320, 500, 0, 163256},
	{1, 064, 500, 0, 163443},
	{1, 448, 500, 0, 163631},
	{3, 192, 500, 0, 163631},
	{1, 320, 500, 0, 163912},
	{1, 064, 500, 0, 164193},
	{1, 448, 500, 0, 164568},
	{1, 320, 500, 0, 164756},
	{1, 192, 500, 0, 164943},
	{1, 064, 500, 0, 165131},
	{1, 448, 500, 0, 165506},
	{1, 320, 500, 0, 165693},
	{1, 192, 500, 0, 166256},
	{1, 448, 500, 0, 166631},
	{3, 064, 500, 0, 166631},
	{1, 448, 500, 0, 167006},
	{1, 064, 500, 0, 167381},
	{1, 064, 500, 0, 167756},
	{1, 320, 500, 0, 168131},
	{1, 320, 500, 0, 168506},
	{1, 064, 500, 0, 168693},
	{1, 192, 500, 0, 168881},
	{1, 448, 500, 0, 169256},
	{1, 320, 500, 0, 169631},
	{3, 064, 500, 0, 169631},
	{1, 320, 500, 0, 170006},
	{1, 192, 500, 0, 170381},
	{1, 192, 500, 0, 170756},
	{1, 064, 500, 0, 171131},
	{1, 064, 500, 0, 171506},
	{1, 120, 500, 0, 171693},
	{1, 448, 500, 0, 171881},
	{1, 192, 500, 0, 172256},
	{1, 320, 500, 0, 172631},
	{1, 064, 500, 0, 172631},
	{1, 064, 500, 0, 173006},
	{1, 448, 500, 0, 173381},
	{1, 448, 500, 0, 173756},
	{1, 064, 500, 0, 174131},
	{1, 192, 500, 0, 174318},
	{1, 320, 500, 0, 174506},
	{1, 192, 500, 0, 174693},
	{1, 064, 500, 0, 174881},
	{1, 448, 500, 0, 175256},
	{1, 320, 500, 0, 175631},
	{1, 064, 500, 0, 176006},
	{1, 064, 500, 0, 176381},
	{1, 320, 500, 0, 176756},
	{1, 448, 500, 0, 177131},
	{1, 064, 500, 0, 177531},
	{1, 192, 500, 0, 178131},
	{1, 064, 500, 0, 178631},
	{1, 192, 500, 0, 178818},
	{1, 320, 500, 0, 179193},
	{1, 448, 500, 0, 179381},
	{1, 064, 500, 0, 179756},
	{1, 320, 500, 0, 180131},
	{1, 064, 500, 0, 181631},
	{1, 448, 500, 0, 181818},
	{1, 192, 500, 0, 182193},
	{1, 064, 500, 0, 182381},
	{1, 192, 500, 0, 182756},
	{1, 448, 500, 0, 183131},
	{1, 320, 500, 0, 184631},
	{1, 192, 500, 0, 184818},
	{1, 448, 500, 0, 185193},
	{1, 320, 500, 0, 185381},
	{1, 064, 500, 0, 185756},
	{1, 448, 500, 0, 186131},
	}
end
  
  
  
return map
