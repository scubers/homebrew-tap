cask "clipbus" do
  version "1.1.2"
  sha256 "fb2fb32e40968b23c88b123229a6efa5eaed0142637ff2c79b180d1b9818e1d5"

  url "https://github.com/scubers/clipbus-release/releases/download/v1.1.2/Clipbus-1.1.2.dmg"
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
