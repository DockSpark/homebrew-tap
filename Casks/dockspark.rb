cask "dockspark" do
  version "0.5.0"
  sha256 "90c0f9369d67eb33e6939b1cac008ec70277f7c176c0f2a1aa0e50fb08e85eff"

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
