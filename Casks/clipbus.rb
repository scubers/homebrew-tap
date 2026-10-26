cask "clipbus" do
  version "2.0.0"
  sha256 "75acdc7d07d27a3e1208387dbb2fd0e31e691b23b015926865b4dddea760de67"

  url "https://github.com/scubers/clipbus-release/releases/download/v2.0.0/Clipbus-2.0.0.dmg"
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
