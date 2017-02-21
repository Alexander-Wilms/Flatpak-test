echo -e "\e[34mremove helloflatpak dir\e[0m"
rm -r -f helloflatpak
echo -e "\e[34mremove .flatpak-builder dir\e[0m"
rm -r -f .flatpak-builder
echo -e "\e[34mdelete old repo\e[0m"
flatpak --user remote-delete helloflatpakrepo
echo -e "\e[34mexecute flatpak-builder\e[0m"
flatpak-builder --repo=repo helloflatpak org.test.Helloflatpak.json
echo -e "\e[34madd the new repository\e[0m"
flatpak --user remote-add --no-gpg-verify --if-not-exists helloflatpakrepo repo
echo -e "\e[34mtry to uninstall the old flatpak\e[0m"
flatpak --user uninstall org.test.Helloflatpak
echo -e "\e[34minstall the flatpak\e[0m"
flatpak --user install helloflatpakrepo org.test.Helloflatpak
echo -e "\e[34mrun the flatpak\e[0m"
flatpak run org.test.Helloflatpak
