rm -rf Installer
rm -rf DiscordWithVencord.app
git clone https://github.com/Vencord/Installer.git
cd Installer
go mod tidy
go build --tags cli
cp vencordinstaller ~
cd ..
mkdir DiscordWithVencord.app
echo "#!/bin/bash" > DiscordWithVencord.app/discordwithvencord
echo "~/vencordinstaller -install -branch auto && open -a Discord" >> DiscordWithVencord.app/discordwithvencord
chmod +x DiscordWithVencord.app/discordwithvencord
cp /Applications/Discord.app/Contents/Resources/electron.icns "DiscordWithVencord.app/discordwithvencord.icns"
cp Info.plist DiscordWithVencord.app
echo Done!