cask "clipbus" do
  version "3.2.0"
  sha256 "f5b825801208e6ad10fa71b25c809a359de52f9d5b7e22280442fdc745d1d51f"

  url "https://github.com/scubers/clipbus-release/releases/download/v3.2.0/Clipbus-3.2.0.dmg"
  name "Clipbus"
  desc "Clipboard manager for macOS"
  homepage "https://clipbus.com/"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Clipbus.app"

  zap trash: [
    "~/Library/Application Support/Clipbus",
    "~/Library/Preferences/com.jaylen.pasty.app.plist",
    "~/Library/Mobile Documents/com~apple~CloudDocs/Clipbus",
  ]
end
