cask "clipbus" do
  version "3.0.2"
  sha256 "086385f1333120cc5f7be4d8e724768b0e17e1c5f21f8f3aedf07b6196b7e46f"

  url "https://github.com/scubers/clipbus-release/releases/download/v3.0.2/Clipbus-3.0.2.dmg"
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
