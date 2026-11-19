cask "clipbus" do
  version "3.5.0"
  sha256 "d708f6b4b31458e0c158818b4e43ed8e8284b85130d0b94124688b7dfc2d3def"

  url "https://github.com/scubers/clipbus-release/releases/download/v3.5.0/Clipbus-3.5.0.dmg"
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
