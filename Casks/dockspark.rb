cask "dockspark" do
  version "0.5.1"
  sha256 "b2075ea0053380903384d270a2d384dd3f31dbf4650c446d65a0e6c91058a493"

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
