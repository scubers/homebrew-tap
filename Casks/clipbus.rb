cask "clipbus" do
  version "1.4.0"
  sha256 "e77ac33df8db7f5b8ed16139408c263c39a9b5adc270e50c31abdc492a3b0242"

  url "https://github.com/scubers/clipbus-release/releases/download/v1.4.0/Clipbus-1.4.0.dmg"
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
