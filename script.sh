brewApps=(
  "--cask alt-tab"
  "--cask anki"
  "--cask betterdisplay"
  "--cask copilot-for-xcode"
  "--cask discord"
  "--cask docker"
  "--cask firefox"
  "--cask gimp"
  "--cask github"
  "--cask glance"
  "--cask arc"
  "--cask hiddenbar"
  "--cask iterm2"
  "--cask logi-options-plus"
  "--cask maccy"
  "--cask messenger"
  "--cask microsoft-office"
  "--cask notion"
  "--cask obsidian"
  "--cask onyx"
  "openrct2"
  "openttd"
  "postgresql@14"
  "r"
  "--cask raspberry-pi-imager"
  "--cask raycast"
  "--cask rectangle"
  "--cask rstudio"
  "--cask sf-symbols"
  "--cask shottr"
  "--cask slack"
  "--cask steam"
  "--cask sublime-text"
  "--cask tomatobar"
  "--cask visual-studio-code"
  "--cask vlc"
  "--cask whatsapp"
  "--cask zoom"
  "--cask handbrake"
  "mas"
)

masApps=(
  "497799835"   # Xcode
  "1444383602"  # GoodNotes
)

# Update brew
brew update

# Install brew cask apps
for app in "${brewApps[@]}"; do
  brew install $app
done

# Clean up
brew cleanup

# Install mas apps
for app in "${masApps[@]}"; do
  mas install $app
done
