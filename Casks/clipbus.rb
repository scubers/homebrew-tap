cask "clipbus" do
  version "1.1.1"
  sha256 "4ea1d6e23297cb678aa6922e98499d82c9ad7d297a883f918a5b54abeb8f0909"

  url "https://github.com/scubers/clipbus-release/releases/download/v1.1.1/Clipbus-1.1.1.dmg"
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
