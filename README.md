# Linux4Handheld - Raccolta guide x diverse distro

## Indice
- [SteamOS](#SteamOS)
- [Cachyos](#CachyOS)
- [Bazzite](#Bazzite)
- [EGPU](#EGPU)
---
# SteamOS
Per steamos ho fatto una guida completa apposita a [questo link](https://github.com/psychomuser/Steamos-Utility-x-Ally-e-LegionGO)

---

# CachyOS
  
## Comandi da terminale da conoscere
- **Per aggiornare il database dei pacchetti:** `sudo pacman -Sy`

## App e Utility da Installare

- **Discover Store:** <br>
**💿 Installazione:** <br>
Da terminale Inserire questo comando, e poi riavviare (sudo reboot)
  ```
  sudo pacman -S discover flatpak
  ```

- **YAY** <br>
  Repositore pacchetti per linux, è utile averlo per utilizzare dei commandi di installazione yay copiati da guide sul web <br>
  **💿 Installazione:** <br>
   ```
   sudo pacman -S --needed base-devel git
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
   ```
   
- **Decky loader:** [Link Download](https://decky.xyz/) <br>
Tool che permette di installare vari plugin utilissimi, di cui alcuni necessari. Presenta uno store interno, ma alcuni vanno comunque scaricati esternamente. <br> 
**💿 Installazione:** <br>
  Aprire il link e scaricare dal pulsante in alto a destra. Aprire il file da gestore file, inserire la password root impostata prima e attendere l'installazione. A quel punto andare in gaming mode e riavviare il sistema per una corretta installazione. Il plugin si troverà nel menù laterale destro di steam, con l'icona di una 🔌. Andare nelle opzioni⚙️ del plugin per attivare la modalità sviluppatore, in modo da poter installare plugin manualmente tramite file zip. 
  
- **Driver per Dongle USB XBOX:** [Link Repositoty](https://github.com/SavageCore/xone-steam-deck-installer) <br>
**💿 Installazione:** Da terminale eseguire questo comando:
  ```
  wget -O /tmp/bootstrap.sh https://github.com/SavageCore/xone-steam-deck-installer/releases/latest/download/bootstrap.sh && sh /tmp/bootstrap.sh
  ```

  ---

# Bazzite
  
## Comandi da terminale da conoscere
- **Installazione Decky Loader:** `ujust setup-decky`
- **Disabilitare reset thunderbolt all'avvio (Necessario per uso EGPU NVIDIA):** `rpm-ostree kargs --append=thunderbolt.host_reset=0`

---

# EGPU
Ottima Guida di Prob su [YouTube](https://www.youtube.com/watch?v=HUxoKRLJwBI) . Il suo PDF a [QUESTO LINK](https://drive.google.com/file/d/1buNI55njLdwwexJO59mwLJBLDETS50T1/view)

## Accorgimenti per EGPU NVIDIA
### Bazzite
- Usare la iso per HTPC NVIDIA, c'è comunque handheld daemon per gestire il controller delle handheld e il TDP.
- Seguire per filo e per segno la guida di Prob per AMD, ma in aggiunta eseguire il comando `rpm-ostree kargs --append=thunderbolt.host_reset=0` da terminale per permettere il funzionamento della EGPU nvidia all'avvio. Attendere la fine dell'operazione, e poi eseguire il comando `systemctl reboot` per riavviare salvando il nuovo parametro del kernel.


### CachyOS
- Su CachyOS usare una normale immagine per handheld. Non installare la versione Nvidia da GRUB (non è pensata per handheld).
- I driver nvidia vanno installati dopo aver collegato la EGPU nvidia, col comando `sudo chwd -a`
- Seguire per filo e per segno la guida di Prob per AMD, ma in aggiunta è necessario fare alcuni passaggi:
   - Aprire il file sdboot-manage.conf al percorso `/etc/sdboot-manage.conf`
   - Cercare la riga `LINUX_OPTIONS=`. e aggiungere la stringa `thunderbolt.host_reset=0` facendo attenzione di scriverlo all'interno delle virgolette presenti, e lasciando semplicemente uno spazio rispetto alle altre stringhe del rigo.
   - Una volta salvate le modifiche al file .conf, eseguire da terminale il comando `sudo sdboot-manage gen` e poi riavviare.
   - 
  
