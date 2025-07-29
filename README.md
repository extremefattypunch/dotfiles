# usage
simply `stow <folder-name>` of course `sudo pacman -S stow` first
you may have to remove existing simlinks first, sometimes even manually but it shouldn't be too much at first install
# Dependencies
flex your arch system!
```
sudo pacman -S fastfetch
```
and see to your cpu and gpu usage live
```
sudo pacman -S conky
```
## pre-installation & iso-burning
on your windows machine you will need
- rufus
- download arch iso from offical site
- usb/external hard drive
when burning iso in rufus pick image dd not iso copy mode! now go to BIOS and boot using your hard drive(turn off secure boot too)
- connect wifi using `iwctl` then do `iwctl show devices` say you are on `wlan0` then do
- `station wlan0 show-networks`
- `station wlan0 connect <ssd-name>`
  
## archinstall config notes
- partition
always choose the internal drive not the external drive used
- profile
use `gdm` as greeter for your `hyprland` desktop. if you have higher end GPUs use the nvidia opensource(turing+) driver option if not by default go for nvidia propietary driver
- network
just copy iso set-up
## git stuff
```
sudo pacman -S git
yay -S github-desktop visual-studio-code-bin
```
i know vscode cringe...but some stuff like `julia repl` is just easier run in visual-studio-code. it's all set up for you...compared to having to lots of config in neovim
## autostartup services
if not already installed with ml4w do
```
sudo pacman -S networkmanager
sudo systemctl enable NetworkManager.service
```
which starts NetworkManager connecting to wifi on startup automatically
## zathura
```
sudo pacman -S zathura zathura-pdf-poppler
```
## other multimedia
image viewer. note there are the dotfiles for the custom meh.desktop just like zathura wrapper above. See mimeapps.list(default apps list) for more
```
git clone https://github.com/jhawthorn/meh
cd meh
sudo make install
```
video and audio player
```
pacman -S mpv
```
## qutebrowser
```
sudo pacman -S qutebrowser pass python-tldextract pdfjs
yay -S python-adblocker
```
to use `pass` you will also need to create gpg-id. to generate it do
```
sudo pacman -S gnupg
gpg --full-generate-key
```
then copy the gpg-id and do
```
pass init <gpg-id>
```
## obsidian
```
sudo pacman -S obsidian
sudo nano /usr/bin/zathura-wrapper
```
then in zathura-wrapper add the following:
```
[Desktop Entry]
Version=1.0
Type=Application
Name=ZathuraWrapper
Exec=/usr/bin/zathura-wrapper %U
Icon=org.pwmt.zathura
Terminal=false
```
then do
```
sudo chmod +x /usr/bin/zathura-wrapper
```
