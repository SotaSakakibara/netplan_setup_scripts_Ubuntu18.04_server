# netplan_setup_scripts_Ubuntu18.04_server
このリポジトリはubuntu18.04環境でraspbarry3のneplan設定を半自動で行えるスクリプトです。
設定を打ち込まなければいけないので楽に済ませられるように作っておきたます

## setup.bashについて
```
sudo ./setup.bash
```
ほとんどが流れで適材適所入力してもらえればOKなのですが、
最後に出てきた入力画面ではコメントアウトしてある文言の一番下に
```
@reboot /home/ubuntu/pimouse_setup/setup.bash
@reboot /sbin/iwconfig wlan0 power off
```
と入力して終了、保存を行ってすべて完了です。
この文言を入れておかないと
iwconfig のパワーオフが再起動した際に勝手にオンにされてしまい
厄介です。

