cask "clipbus" do
  version "1.1.0"
  sha256 "999e660412707367f80a17292659ab229d5fc9f7dd02d6cf69ecb1b6cfe0c1f3"

  url "https://github.com/scubers/clipbus-release/releases/download/v1.1.0/Clipbus-1.1.0.dmg"
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
