cask "clipbus" do
  version "1.0.7"
  sha256 "5d1bc97f1152ea4b2980cfc5d6e348861e271d8545eff43aa0d795ced6e9a62b"

  url "https://github.com/scubers/clipbus-release/releases/download/v1.0.7/Clipbus-1.0.7.dmg"
  name "Clipbus"
  desc "Clipboard manager for macOS"
  homepage "https://clipbus.com/"

  depends_on macos: ">= :sequoia"

  app "Clipbus.app"

  zap trash: [
    "~/Library/Application Support/Clipbus",
    "~/Library/Preferences/com.jaylen.pasty.app.plist",
    "~/Library/Mobile Documents/com~apple~CloudDocs/Clipbus",
  ]
end
