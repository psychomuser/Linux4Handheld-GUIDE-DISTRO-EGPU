# CachyOS Handheld - Cosa fare dopo l'installazione

## Indice
- [Comandi da terminale da conoscere](#comandi-da-terminale-da-conoscere)
- [App e Utility](#app-e-utility-da-installare)
  
---
## Comandi da terminale da conoscere
**Per aggiornare il database dei pacchetti:**
  ```
  sudo pacman -Sy
  ```

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
