cask "clipbus" do
  version "1.7.1"
  sha256 "14d326d9fd548d9a1147506914152cb00da9054e61d3b82dadb3225b999a7dd0"

  url "https://github.com/scubers/clipbus-release/releases/download/v1.7.1/Clipbus-1.7.1.dmg"
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
