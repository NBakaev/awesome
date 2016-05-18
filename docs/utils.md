# CMD utils
Just some common used snippets and utils

### Pandoc
Convert markdown to doc/pdf... with http://pandoc.org/
```bash
pandoc -f markdown -t docx file.md -o file.docx
```

### Use 3.4 python as system in ubuntu
```bash
sudo rm /usr/bin/python
sudo ln -s /usr/bin/python3.4 /usr/bin/python
```

#### symbolic links

`ln -s <real folder> <link folder>`

#### Clover - tabs in explorer for windows 10

```html
I've found a setting in Explorer whitch may be the cause of most of Clover issues. To fix this:

	1. In Explorer window go to View -> Options;
	2. In opened Folder Options window go to View tab, scroll down to "Launch folder windows in a separate process" and make sure it's UNCHECKED.

This may fix the thing ;)
```

### Disable Windows 10 spy / tracking / telemetry

 - http://wintoflash.com/forum/viewtopic.php?f=7&t=42296&p=48250
 - https://nnmclub.to/forum/viewtopic.php?t=926567&start=45
 - http://habrahabr.ru/company/pt/blog/264763/

### Save positions in video VLC
 - http://vlcsrposplugin.sourceforge.net/

### SDN / Software firewalls, proxy...
  - m0n0wall
  - pfsense
  - kerio

### CA cert
http://blog.didierstevens.com/2008/12/30/howto-make-your-own-cert-with-openssl/

#### Создание корневого сертификата в Android SSL
```bash
openssl x509 -noout -subject_hash_old  -in your-root-cert

> Launch a terminal emulator window on your phone (I used this one) and run the following commands. replace “5ed36f99.0″ with the actual name of your certificate :

cp /mnt/sdcard/5ed36f99.0 /etc/security/cacerts/
chown root.root /etc/security/cacerts/5ed36f99.0
chmod 644 /etc/security/cacerts/5ed36f99.0
```

#### Chrome allow-running-insecure-content

"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --allow-running-insecure-content --ignore-certificate-errors

### Downlaod from coursera
https://class.coursera.org/econometrics-001/lecture

`coursera-dl -u coursera_username -p coursera_password econometrics-001`

### Clear storage

find files larger 10mb `find / -size +10M -ls`
Folders to delete `/root/.local/share/Trash/` & `/var/cache/`

### View files in .deb
`dpkg-deb -c file.deb`

### Docker - Error opening terminal: unknown
`export TERM=xterm`

### SSH key
`ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`

### ssh-agent
 - [Multiple SSH Keys settings for different github account](https://gist.github.com/jexchan/2351996)

```bash
eval "$(ssh-agent)"
ssh-add admin-key.pem
```

### VMware VMs
VMware can not create normal working vmware tools on linux(ubuntu) and community have patches to work shared folders etc...
https://github.com/rasa/vmware-tools-patches

Simple and quick script to install vmware-tools
```bash
apt-get install git curl unzip
git clone https://github.com/rasa/vmware-tools-patches.git
cd vmware-tools-patches
./download-tools.sh latest
./untar-and-patch.sh
./compile.sh
```

### Docker with socket
`curl --no-buffer -XGET --unix-socket /var/run/docker.sock http:/events`
