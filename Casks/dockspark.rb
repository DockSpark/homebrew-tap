cask "dockspark" do
  version "0.2.0"
  sha256 "f30bc0f923eec346b713929753efdee0795bb477681591b95c2c9f01d5e92bdc"

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
