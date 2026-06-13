cask "clipbus" do
  version "1.0.6"
  sha256 "f5f336ca2edd62fa674f755d2f95254460333f62a1facda6854c6d05afa6bf96"

  url "https://github.com/scubers/clipbus-release/releases/download/v1.0.6/Clipbus-1.0.6.dmg"
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
