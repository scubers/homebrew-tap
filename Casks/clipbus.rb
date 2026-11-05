cask "clipbus" do
  version "3.1.0"
  sha256 "ddd1c06f37b7347379b9ec5bc620b6ac82d8ff528184bc9a9c7315150ddff55a"

  url "https://github.com/scubers/clipbus-release/releases/download/v3.1.0/Clipbus-3.1.0.dmg"
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
