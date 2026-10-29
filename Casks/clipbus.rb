cask "clipbus" do
  version "3.0.1"
  sha256 "828161e133d5447d20b658dfba550b0a653126a7a592c79b0cccf7366a5fca06"

  url "https://github.com/scubers/clipbus-release/releases/download/v3.0.1/Clipbus-3.0.1.dmg"
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
