# cookieclicker

<img src="Game/img/perfectCookie.png" width="128">

The original game can be found at http://orteil.dashnet.org/cookieclicker/

This mirror for, errrr, like, educational purpose, either to download for your own offline education or to be played online from http://ozh.github.io/cookieclicker/ if you cannot "educate" yourself on the original URL

### How to update

If the original game updates, here is how you can update the mirror:

#### 1. Fetch all new images :

From the root,

* `cd img/`
* `wget --convert-links -O index.html http://orteil.dashnet.org/cookieclicker/img/`
* `grep -v PARENTDIR index.html | grep '\[IMG' | grep -Po 'a href="\K.*?(?=")' | sed 's/\?.*//' > _imglist.txt`
* `wget -N -i _imglist.txt -B http://orteil.dashnet.org/cookieclicker/img/`

#### 2. Fetch all new sounds :

Similarly, from the root :

* `cd snd/`
* `wget --convert-links -O index.html http://orteil.dashnet.org/cookieclicker/snd/`
* `grep -v PARENTDIR index.html | grep '\[SND' | grep -Po 'a href="\K.*?(?=")' | sed 's/\?.*//' > _sndlist.txt`
* `wget -N -i _sndlist.txt -B http://orteil.dashnet.org/cookieclicker/snd/`

#### 3. Fetch all new translations :

Similarly, from the root :

* `cd loc/`
* `wget --convert-links -O index.html http://orteil.dashnet.org/cookieclicker/loc/`
* `grep -v PARENTDIR index.html | grep '\[  ' | grep -Po 'a href="\K.*?(?=")' | sed 's/\?.*//' > _loclist.txt`
* `wget -N -i _loclist.txt -B http://orteil.dashnet.org/cookieclicker/loc/`

#### 4. Update `js` and `html` files :

From the root directory :

* Fetch the updated `index.html` file: `wget -O index.html http://orteil.dashnet.org/cookieclicker/` 
* Fetch the updated `style.css` file: `wget -O style.css http://orteil.dashnet.org/cookieclicker/style.css`
* Fetch updated `js` files : `wget -N -i _jslist.txt -B http://orteil.dashnet.org/cookieclicker/`
* Scan `index.html` for any new `<script src` and also `main.js` for any new local javascript (eg `Game.last.minigameUrl`). If there are new scripts, update the `_jslist.txt` accordingly.
* In `main.js` there is a call to a remote script we need to modify:
  * Look for `ajax('/patreon/grab.php'` and replace it with `ajax('grab.txt'`
  * In the root: `wget -O grab.txt http://orteil.dashnet.org/patreon/grab.php`

#### 5. Report update here :)

If you happen to update, please make a pull request for others to benefit, thanks!

# Mod Loading

### *I AM NOT LIABLE IF YOU RUN A MALICIOUS MOD. IT IS UP TO YOU TO ENSURE YOU DOWNLOAD AND RUN SAFE FILES*

### **If you have installed this Cookie Clicker instance as an app, you can very quickly and easily install mods.**
#### *Note, sometimes there will be mod incompatibilites, whether it be with another mod, or the cookie clicker version. I'm not providing downgrades for this, so if the mod doesn't work on the latest version, tough luck.*
### Method 1

If you have the .JS file, you can simple right-click, open with Cookie Clicker, and then it should load automagically.

Warning; When doing this on Windows, you may get a prompt asking you if you're sure you want to open the file. This is ok, as it's there to stop you from running anything malicious, so double check the mod is clean before running it.

### Method 2
Another method would be through creating a mod pack. It's just a JSON file with a special extension.

### Example
```json
//Save this as ModPack.cookiejar or ModPack.json

{
	"Cookie Jar Version": 1.0,
	"Mods": [
		{
			"Name": "Cookie Monster",
			"URL": "https://cookiemonsterteam.github.io/CookieMonster/dist/CookieMonster.js"
		},
		{
			"Name": "Frozen Cookies",
			"URL": "https://mtarnuhal.github.io/FrozenCookies/frozen_cookies.js"
		},
		//So on and so forth
	]
}
```
To load it, simply rename the file extension from ".json" to ".cookiejar" (or don't, it still works) and then do the same steps as for method 1 (You may need to enable file extensions on [Windows](https://support.microsoft.com/en-us/windows/common-file-name-extensions-in-windows-da4a4430-8e76-89c5-59f7-1cdbbc75cb01#:~:text=In%20File%20Explorer%20under%20View%2C%20in%20the%20Show/hide%20group%2C%20select%20the%20File%20name%20extensions%20check%20box.)).


