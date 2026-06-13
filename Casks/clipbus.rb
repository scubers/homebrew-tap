cask "clipbus" do
  version "1.0.5"
  sha256 "b378e42dbc44a04d66e4b3119093b4338b0e2cd5ded7d1482e9a7c80295e2b53"

  url "https://github.com/scubers/clipbus-release/releases/download/v1.0.5/Clipbus-1.0.5.dmg"
  name "Clipbus"
  desc "Clipboard manager for macOS"
  homepage "https://clipbus.com/"

  depends_on macos: ">= :sequoia"

  app "Clipbus.app"

  zap trash: [
    "~/Library/Application Support/Clipbus",
    "~/Library/Preferences/com.jaylen.pasty.app.plist",
    "~/Library/Mobile Documents/com~apple~CloudDocs/Clipbus",
  ]
end
