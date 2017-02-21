rm -r helloflatpak
flatpak-builder --repo=repo helloflatpak org.test.Helloflatpak.json
flatpak --user remote-add --no-gpg-verify --if-not-exists helloflatpakrepo repo
flatpak --user uninstall org.test.Helloflatpak
flatpak --user install helloflatpakrepo org.test.Helloflatpak
flatpak run org.test.Helloflatpak
