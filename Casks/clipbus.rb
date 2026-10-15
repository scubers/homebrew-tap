cask "clipbus" do
  version "1.6.0"
  sha256 "8d331b9e2cdce33c1a42bae13178c3730c7ca6a17ddd919491f5f3ec6904d28e"

  url "https://github.com/scubers/clipbus-release/releases/download/v1.6.0/Clipbus-1.6.0.dmg"
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
