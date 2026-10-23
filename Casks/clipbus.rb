cask "clipbus" do
  version "1.7.3"
  sha256 "3250f47857f30aa60b4c30c9a68e5bb52ca18286ea5a7cd673a2b295551ebe6a"

  url "https://github.com/scubers/clipbus-release/releases/download/v1.7.3/Clipbus-1.7.3.dmg"
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
