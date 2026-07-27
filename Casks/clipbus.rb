cask "clipbus" do
  version "1.5.1"
  sha256 "44c061b06071bceb3870c4f0f7996a30b83ccf76f61266167ab9e7369bcc0380"

  url "https://github.com/scubers/clipbus-release/releases/download/v1.5.1/Clipbus-1.5.1.dmg"
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
