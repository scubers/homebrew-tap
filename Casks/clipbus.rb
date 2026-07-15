cask "clipbus" do
  version "1.1.3"
  sha256 "810c5e35a9af26eb9a23cba33c3d3eed5daa80873cba40c5a67bf9e83e3ea26c"

  url "https://github.com/scubers/clipbus-release/releases/download/v1.1.3/Clipbus-1.1.3.dmg"
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
