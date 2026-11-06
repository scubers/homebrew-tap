cask "clipbus" do
  version "3.2.1"
  sha256 "ab432882ceebab3970e953fa8b7d890588dc12ce0eef43c34d3903a5d21e981b"

  url "https://github.com/scubers/clipbus-release/releases/download/v3.2.1/Clipbus-3.2.1.dmg"
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
