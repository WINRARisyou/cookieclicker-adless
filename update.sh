cp Game/img/ss1.jpg Base/ss1.jpg
cp Game/img/ss2.jpg Base/ss2.jpg
cp Game/img/ss3.jpg Base/ss3.jpg
cp Game/img/ss4.jpg Base/ss4.jpg
cp Game/img/ss5.jpg Base/ss5.jpg
cp Game/img/ss6.jpg Base/ss6.jpg
cp Game/img/ss7.jpg Base/ss7.jpg
cp Game/img/ss8-1.png Base/ss7-1.png
cp Game/img/ss9-1.png Base/ss7-1.png
cp Game/img/ss10-1.png Base/ss7-1.png
cp Game/img/ss11-1.png Base/ss7-1.png
cp Game/img/ss12-1.png Base/ss7-1.png
cp Game/img/ss13-1.png Base/ss7-1.png
cp Game/img/mods-icon.png Base/mods-icon.png
cp Game/img/favicon.ico Base/favicon.ico
cp Game/img/16.png Base/16.png
cp Game/img/32.png Base/32.png
cp Game/img/64.png Base/64.png
cp Game/img/128.png Base/128.png
cp Game/img/256.png Base/256.png
cp Game/main.js Base/REMEMBERTOADDMODLOGIC.js
cp Game/index.html Base/REMEMBERTOREMOVEADS.html
cp Game/cookieconsent.css Base/cookieconsent.css
cd Game
rm -r img
rm -r loc
rm -r snd
mkdir img
mkdir loc
mkdir snd
for f in $(cat jslist.txt) ; do 
  rm "$f"
done
cd img/
wget --convert-links -O index.html http://orteil.dashnet.org/cookieclicker/img/
grep -v PARENTDIR index.html | grep '\[IMG' | grep -Po 'a href="\K.*?(?=")' | sed 's/\?.*//' > _imglist.txt
wget -N -i imglist.txt -B http://orteil.dashnet.org/cookieclicker/img/
cd ../snd/
wget --convert-links -O index.html http://orteil.dashnet.org/cookieclicker/snd/
grep -v PARENTDIR index.html | grep '\[SND' | grep -Po 'a href="\K.*?(?=")' | sed 's/\?.*//' > _sndlist.txt
wget -N -i sndlist.txt -B http://orteil.dashnet.org/cookieclicker/snd/
cd ../loc/
wget --convert-links -O index.html http://orteil.dashnet.org/cookieclicker/loc/
grep -v PARENTDIR index.html | grep '\[TXT' | grep -Po 'a href="\K.*?(?=")' | sed 's/\?.*//' > _loclist.txt
wget -N -i loclist.txt -B http://orteil.dashnet.org/cookieclicker/loc/
cd ../
wget -O index-REMOVEADS.html http://orteil.dashnet.org/cookieclicker/
wget -O style.css http://orteil.dashnet.org/cookieclicker/style.css
wget -N -i jslist.txt -B http://orteil.dashnet.org/cookieclicker/
wget -O grab.txt http://orteil.dashnet.org/patreon/grab.php
cd ..
mv Base/ss1.jpg Game/img/ss1.jpg
mv Base/ss2.jpg Game/img/ss2.jpg
mv Base/ss3.jpg Game/img/ss3.jpg
mv Base/ss4.jpg Game/img/ss4.jpg
mv Base/ss5.jpg Game/img/ss5.jpg
mv Base/ss6.jpg Game/img/ss6.jpg
mv Base/ss7.jpg Game/img/ss7.jpg
mv Base/ss8-1.png Game/img/ss8-1.png
mv Base/ss9-1.png Game/img/ss9-1.png
mv Base/ss10-1.png Game/img/ss10-1.png
mv Base/ss11-1.png Game/img/ss11-1.png
mv Base/ss12-1.png Game/img/ss12-1.png
mv Base/ss13-1.png Game/img/ss13-1.png
mv Base/mods-icon.png Game/img/mods-icon.png
mv Game/img/favicon.ico Game/img/favicon-16.ico
mv Base/favicon.ico Game/img/favicon.ico
mv Base/16.png Game/img/16.png
mv Base/32.png Game/img/32.png
mv Base/64.png Game/img/64.png
mv Base/128.png Game/img/128.png
mv Base/256.png Game/img/256.png
echo Remember to remove ads, add mod loading logic and change cookieconsent