cask "clipbus" do
  version "1.5.2"
  sha256 "d860484ad10756a75814a1a1f705e7525c1844083b004185ba392eef391e6844"

  url "https://github.com/scubers/clipbus-release/releases/download/v1.5.2/Clipbus-1.5.2.dmg"
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
