cask "macbelt" do
  version "0.1.0"
  sha256 "9c45f014c02a838ea353870a0738eef97b226b9b778a45519fa9428fa6b0ad6d"

  url "https://github.com/callumdeas/macbelt-releases/releases/download/v#{version}/Macbelt-#{version}.dmg"
  name "Macbelt"
  desc "Clipboard history and screenshot tool"
  homepage "https://github.com/callumdeas/macbelt-releases"

  depends_on macos: ">= :sequoia"
  auto_updates true

  app "Macbelt.app"

  zap trash: [
    "~/Library/Application Support/Macbelt",
    "~/Library/Preferences/dev.callumdeas.macbelt.plist",
  ]
end
