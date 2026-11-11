cask "clipbus" do
  version "3.3.0"
  sha256 "79b4d9fe9cd8308873d109d7d6a26a07b149eba2f0f52392d5d9037bb9adfb93"

  url "https://github.com/scubers/clipbus-release/releases/download/v3.3.0/Clipbus-3.3.0.dmg"
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
