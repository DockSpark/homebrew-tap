cask "dockspark" do
  version "0.1.0"
  sha256 "f7d99c6ed400bbb34e3d756a38e6ea052150cfc59428a95b2a026eaae8565fe0"

  url "https://github.com/DockSpark/DockSpark/releases/download/v#{version}/DockSpark-#{version}.dmg"
  name "DockSpark"
  desc "Switch browser profiles directly from the Dock"
  homepage "https://dockspark.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "DockSpark.app"

  zap trash: [
    "~/Library/Application Scripts/app.dockspark.DockSpark",
    "~/Library/Application Support/DockSpark",
    "~/Library/Caches/app.dockspark.DockSpark",
    "~/Library/Containers/app.dockspark.DockSpark",
    "~/Library/HTTPStorages/app.dockspark.DockSpark",
    "~/Library/HTTPStorages/app.dockspark.DockSpark.binarycookies",
    "~/Library/Preferences/app.dockspark.DockSpark.plist",
  ]
end
