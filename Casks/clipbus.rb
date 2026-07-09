cask "clipbus" do
  version "1.1.0"
  sha256 "999e660412707367f80a17292659ab229d5fc9f7dd02d6cf69ecb1b6cfe0c1f3"

  url "https://github.com/scubers/clipbus-release/releases/download/v#{version}/Clipbus-#{version}.dmg"
  name "Clipbus"
  desc "Programmable clipboard manager"
  homepage "https://clipbus.com/"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Clipbus.app"

  zap trash: [
    "~/Library/Application Support/Clipbus",
    "~/Library/Mobile Documents/com~apple~CloudDocs/Clipbus",
    "~/Library/Preferences/com.jaylen.pasty.app.plist",
  ]
end
