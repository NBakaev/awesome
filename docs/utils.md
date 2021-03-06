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

#### Clover
tabs in explorer for windows 10

```html
I've found a setting in Explorer whitch may be the cause of most of Clover issues. To fix this:

	1. In Explorer window go to View -> Options;
	2. In opened Folder Options window go to View tab, scroll down to "Launch folder windows in a separate process" and make sure it's UNCHECKED.

This may fix the thing ;)
```

### Disable Windows 10 telemetry
( spy / tracking)

 - http://wintoflash.com/forum/viewtopic.php?f=7&t=42296&p=48250
 - https://nnmclub.to/forum/viewtopic.php?t=926567&start=45
 - http://habrahabr.ru/company/pt/blog/264763/
 - [Disable Microsoft Compatibility Telemetry in Windows 10](from https://ugetfix.com/ask/how-to-disable-microsoft-compatibility-telemetry-compattelrunner-exe/)

 in cmd:
 ```
 sc delete DiagTrack
 sc delete dmwappushservice
 echo “” > C:\ProgramData\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl
 reg add “HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection” /v AllowTelemetry /t REG_DWORD /d 0 /f
 ```

### Save positions in video VLC
 - http://vlcsrposplugin.sourceforge.net/

### SDN / Software firewalls, proxy...
  - m0n0wall
  - pfsense
  - kerio

### CA cert

 - [Howto: Make Your Own Cert With OpenSSL](http://blog.didierstevens.com/2008/12/30/howto-make-your-own-cert-with-openssl/)

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

### SSH

#### Copy file from host to remote
`scp /path/to/file username@a:/path/to/destination`

#### Generate SSH key
`ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`

#### ssh-agent
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
git clone https://github.com/rasa/vmware-tools-patches.git & cd vmware-tools-patches
./download-tools.sh latest & ./untar-and-patch.sh & ./compile.sh
```

Force vmware allocate in memory (do not user .vmem files)
https://communities.vmware.com/thread/564465

add to .vmx file of VM

```bash
prefvmx.minVmMemPct = "100"
MemTrimRate = "0"
mainMem.useNamedFile = "FALSE"
sched.mem.pshare.enable = "FALSE"
prefvmx.useRecommendedLockedMemSize = "TRUE"
```

### Docker
Docker, Docker, Docker

#### Docker - Error opening terminal: unknown
`export TERM=xterm`

#### Docker API through socket
`curl --no-buffer -XGET --unix-socket /var/run/docker.sock http:/events`

### Delete unused images
`docker images -a|grep '^<none>'|tr -s ' '|cut -d' ' -f 3|xargs docker rmi`

### Access local mounted drive in RDP in remote Cygwin
`cd //tsclient/D` where D is name of mounted drive

### Mount Samba
```bash
sudo apt-get install cifs-utils
mount -t cifs -o username=SECRET_USERNAME,password=SECRET_PASSWORD //192.168.1.82/backups/ /mnt/backups
umount /mnt/192.168.1.82
```

### Set hostname ubuntu
Edit /etc/cloud/cloud.cfg and set the parameter "preserve_hostname" from "false" to "true" 

```bash
hostnamectl set-hostname 'new-hostname'
```

### run simple webserver

```bash
python -m http.server 5005
```

### Acronis Backup
- [46745: Acronis Backup Advanced 11.7/11.5: Moving Acronis Management Server](https://kb.acronis.com/content/46745)
`/usr/lib/Acronis/BackupAndRecovery/uninstall/uninstall`

#### releases
 - http://www.acronis.com/en-us/support/updates/
 - http://www.acronis.com/en-us/enterprise/download/acronis-storage/
 - http://dl2.acronis.com/u/AcronisBackup12/Release/AcronisBackup_12_64-bit.x86_64
 - http://dl2.acronis.com/u/AcronisBackup12.5/Release/AcronisBackup_12.5_64-bit.exe

## rsync

`rsync -chavzP --include='PATTERN*' root@HOST:/FOLDER/ /X/`

## Add own CA cert to java JDK
In folder with jdk/jre, such as example`C:\Program Files\Java\jre-9\lib\security`
Default password is `changeit`
`keytool -keystore cacerts -importcert -alias my_custom_cert_name -file "C:\path_to_ca_cert\ca.crt"`

## Windows

### Make read only disk writable
SAN Policy=OnlineAll
https://blogs.technet.microsoft.com/askcore/2011/06/02/my-disk-is-read-only-help/
https://www.qualitestgroup.com/resources/knowledge-center/how-to-guide/offlineonline-disk-using-diskpart/

```bash
diskpart
list disk
select disk 1
online disk
attributes disk clear readonly
```

```bash
netsh winhttp reset proxy
```

### Windows 10 delete preinstalled app photo
```powershell
Get-AppxPackage *photos* | Remove-AppxPackage
```