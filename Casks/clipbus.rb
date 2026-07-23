cask "clipbus" do
  version "1.3.0"
  sha256 "cc974b9905ce8ae162bf0159682b3f905fdcc4a276db72f5283b04ad4c066aef"

  url "https://github.com/scubers/clipbus-release/releases/download/v1.3.0/Clipbus-1.3.0.dmg"
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
