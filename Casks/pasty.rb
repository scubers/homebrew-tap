cask "pasty" do
  version "1.0.3"
  sha256 "0a32aa69678851a0809064220c24faf47918d170c02f321c7dd379c9dd692ce3"

  url "https://github.com/scubers/pasty-release/releases/download/v1.0.3/Pasty-1.0.3.dmg"
  name "Pasty"
  desc "Clipboard manager for macOS"
  homepage "https://official.pastyclip.com/"

  depends_on macos: ">= :sequoia"

  app "Pasty.app"

  zap trash: [
    "~/Library/Application Support/Pasty",
    "~/Library/Preferences/com.jaylen.pasty.app.plist",
    "~/Library/Mobile Documents/com~apple~CloudDocs/Pasty",
  ]
end
