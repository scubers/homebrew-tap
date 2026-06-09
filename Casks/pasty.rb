cask "pasty" do
  version "1.0.4"
  sha256 "38ed1c5d8f54d8c8220455c3da1358ec23387766b42ecdf57f01130b11133f03"

  url "https://github.com/scubers/pasty-release/releases/download/v1.0.4/Pasty-1.0.4.dmg"
  name "Pasty"
  desc "Clipboard manager for macOS"
  homepage "https://official.pastyclip.com/"

  depends_on macos: ">= :sequoia"

  app "Pasty.app"

  zap trash: [
    "~/Library/Application Support/Pasty",
    "~/Library/Preferences/com.jaylen.pasty.app.plist",
    "~/Library/Mobile Documents/com~apple~CloudDocs/Pasty",
  ]
end
