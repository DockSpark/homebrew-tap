cask "dockspark" do
  version "0.0.7"
  sha256 "4ea038b5961916d7326f5c69650dbf634483d0d677fdc4f0937d0f9bb16ef48b"

  url "https://github.com/DockSpark/DockSpark/releases/download/v#{version}/DockSpark-#{version}.zip"
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
