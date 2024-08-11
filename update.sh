cp Game/img/ss1.jpg ss1.jpg
cp Game/img/ss2.jpg ss2.jpg
cp Game/img/ss3.jpg ss3.jpg
cp Game/img/ss4.jpg ss4.jpg
cp Game/img/ss5.jpg ss5.jpg
cp Game/img/ss6.jpg ss6.jpg
cp Game/img/ss7.jpg ss7.jpg
cp Game/img/mods-icon.png mods-icon.png
cp Game/img/favicon.ico favicon.ico
cp Game/img/16.png 16.png
cp Game/img/32.png 32.png
cp Game/img/64.png 64.png
cp Game/img/128.png 128.png
cp Game/img/256.png 256.png
cp Game/main.js REMEMBERTOADDMODLOGIC.js
cp Game/index.html REMEMBERTOREMOVEADS.html
cd Game
rm -r img
rm -r loc
rm -r snd
mkdir img
mkdir loc
mkdir snd
for f in $(cat _jslist.txt) ; do 
  rm "$f"
done
cd img/
wget --convert-links -O index.html http://orteil.dashnet.org/cookieclicker/img/
grep -v PARENTDIR index.html | grep '\[IMG' | grep -Po 'a href="\K.*?(?=")' | sed 's/\?.*//' > _imglist.txt
wget -N -i _imglist.txt -B http://orteil.dashnet.org/cookieclicker/img/
cd ../snd/
wget --convert-links -O index.html http://orteil.dashnet.org/cookieclicker/snd/
grep -v PARENTDIR index.html | grep '\[SND' | grep -Po 'a href="\K.*?(?=")' | sed 's/\?.*//' > _sndlist.txt
wget -N -i _sndlist.txt -B http://orteil.dashnet.org/cookieclicker/snd/
cd ../loc/
wget --convert-links -O index.html http://orteil.dashnet.org/cookieclicker/loc/
grep -v PARENTDIR index.html | grep '\[TXT' | grep -Po 'a href="\K.*?(?=")' | sed 's/\?.*//' > _loclist.txt
wget -N -i _loclist.txt -B http://orteil.dashnet.org/cookieclicker/loc/
cd ../
wget -O index.html http://orteil.dashnet.org/cookieclicker/
wget -O style.css http://orteil.dashnet.org/cookieclicker/style.css
wget -N -i _jslist.txt -B http://orteil.dashnet.org/cookieclicker/
wget -O grab.txt http://orteil.dashnet.org/patreon/grab.php
cd ..
mv ss1.jpg Game/img/ss1.jpg
mv ss2.jpg Game/img/ss2.jpg
mv ss3.jpg Game/img/ss3.jpg
mv ss4.jpg Game/img/ss4.jpg
mv ss5.jpg Game/img/ss5.jpg
mv ss6.jpg Game/img/ss6.jpg
mv ss7.jpg Game/img/ss7.jpg
mv mods-icon.png Game/img/mods-icon.png
mv Game/img/favicon.ico Game/img/favicon-16.ico
mv favicon.ico Game/img/favicon.ico
mv 16.png Game/img/16.png
mv 32.png Game/img/32.png
mv 64.png Game/img/64.png
mv 128.png Game/img/128.png
mv 256.png Game/img/256.png
echo Remember to remove ads, add mod loading logic and change cookieconsent