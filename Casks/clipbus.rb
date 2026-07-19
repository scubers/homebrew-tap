cask "clipbus" do
  version "1.2.0"
  sha256 "2402c6a904b4e44a8520a609e14965f839202936b7a7abbb8ff70c9f2cbd92ab"

  url "https://github.com/scubers/clipbus-release/releases/download/v1.2.0/Clipbus-1.2.0.dmg"
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
