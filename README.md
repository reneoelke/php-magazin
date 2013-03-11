# Beschreibung

Dies ist ein Beispielprojekt für den Artikel "Von einem, der auszog, das Kochen zu lernen - PHP 5.4 / 5.5 mit Vagrant und Chef virtualisieren" im PHP Magazin 3.2013 zur Demonstration von Vagrant und Chef.

Es werden 2 virtuelle Maschinen gestartet, eine mit PHP 5.4 (`php54`) und eine mit PHP 5.5 (`php55`).

# Requirements

- [Git](http://git-scm.com/download)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](http://downloads.vagrantup.com/)

# Installation

Nachdem das Git Repository geklont wurde (inkl. Submodule), welchselt man in das Projekt-Verzeichnis und startet die virtuelle Umgebung:

```bash
git clone --recursive git://github.com/foobugs/php-magazin.git php-magazin
cd php-magazin
vagrant up
```

# Test

Öffenet man im Browser folgende URLs, erscheint eine PHPInfo-Seite mit den Details zur installierten PHP-Runtime:

- PHP 5.4: [http://localhost:8054](http://localhost:8054)
- PHP 5.5: [http://localhost:8055](http://localhost:8055)

# Deinstallation

Um das Projekt zu deinstallieren, muss man lediglich die virtuelle Umgebung und ggf. das Projekt-Verzeichnis löschen:

```bash
vagrant destroy
cd ..
rm -rf php-magazin
```
