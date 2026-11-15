cask "clipbus" do
  version "3.4.0"
  sha256 "45d5ec4e697bcc3f8829c90f4c44f40e4d166285a53ef94081ef46ccd3717a6a"

  url "https://github.com/scubers/clipbus-release/releases/download/v3.4.0/Clipbus-3.4.0.dmg"
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
