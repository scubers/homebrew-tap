cask "clipbus" do
  version "1.0.8"
  sha256 "6a25b9168e3198ad40d4c3dcd7a5c6e13603b1964712135cddfb7b1008188346"

  url "https://github.com/scubers/clipbus-release/releases/download/v1.0.8/Clipbus-1.0.8.dmg"
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
