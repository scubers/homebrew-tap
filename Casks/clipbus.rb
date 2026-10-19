cask "clipbus" do
  version "1.7.0"
  sha256 "34f1360b74b1500960ac4b991b556d1e20abba1664b8c06695adde5efed79d15"

  url "https://github.com/scubers/clipbus-release/releases/download/v1.7.0/Clipbus-1.7.0.dmg"
  name "Clipbus"
  desc "Clipboard manager for macOS"
  homepage "https://clipbus.com/"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Clipbus.app"

  zap trash: [
    "~/Library/Application Support/Clipbus",
    "~/Library/Preferences/com.jaylen.pasty.app.plist",
    "~/Library/Mobile Documents/com~apple~CloudDocs/Clipbus",
  ]
end
