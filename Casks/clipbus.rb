cask "clipbus" do
  version "3.0.0"
  sha256 "9b2228a87e8248d27ed77531d8d2c24574576e374eb40d315acc87953e638a7b"

  url "https://github.com/scubers/clipbus-release/releases/download/v3.0.0/Clipbus-3.0.0.dmg"
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
