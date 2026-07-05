cask "clipbus" do
  version "1.0.9"
  sha256 "482c01ddba2ce47f8a739af22112a929c09f04a7050e58cb0a2b751227e5de30"

  url "https://github.com/scubers/clipbus-release/releases/download/v1.0.9/Clipbus-1.0.9.dmg"
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
