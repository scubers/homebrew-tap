cask "pasty" do
  version "1.0.2"
  sha256 "9f58b3da4f09c7334dd75399b801a897339f581e80023a5cd9252a16ba1c553e"

  url "https://github.com/scubers/pasty-release/releases/download/v1.0.2/Pasty-1.0.2.dmg"
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
