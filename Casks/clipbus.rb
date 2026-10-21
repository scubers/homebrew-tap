cask "clipbus" do
  version "1.7.2"
  sha256 "8c41e8d50f8b847874e3a13267a2ff4b31301fc8037e998f91251367a3bf4174"

  url "https://github.com/scubers/clipbus-release/releases/download/v1.7.2/Clipbus-1.7.2.dmg"
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
