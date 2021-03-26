<div align="center">

# osia
::onion site in android:: - in development

</div>

### General Information:
Automatic launch install Onion site in Android system through [Termux](https://play.google.com/store/apps/details?id=com.termux&hl=en_US&gl=US "Google Play"). 
>Several CMS will be added the first one will be:
- [Pagekit](https://github.com/pagekit/pagekit)

<div align="right">

[![Visits Badge](https://badges.pufler.dev/visits/7ife/osia)](https://github.com/7ife/osia)
[![](https://img.shields.io/badge/-Donate-%23181717?style=flat-square&logo=bitcoin)](https://commerce.coinbase.com/checkout/61780323-c37c-41a2-8d13-571f125e813a)
</div>

---
### Instructions:
 >Launching **Pagekit CMS** 1.0.18 <br>
- `pkg update && pkg upgrade`
- `pkg install git`
- `git clone https://github.com/7ife/osia` 
- `cd osia`
- `bash pkit.sh` <br>

>When you have received your onion address, you can collapse the application and in any browser open address `localhost:8080` or `127.0.0.1:8080` <br>
if you closed the tor, then to start it: <br>
- `cd $HOME/osia`
- `bash tkit.sh`

>if for some reason your device with the site turned off or rebooted, use this command to start: <br>
- `cd $HOME/osia`
- `bash bkit.sh`

