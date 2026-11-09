cask "geopeek" do
  version "0.3.0"
  sha256 "88dad30bb829e162405efe4f61826984cce7fa460af4f9b14ad24aa08ebd5b28"

  url "https://github.com/serifsadi/geopeek/releases/download/v#{version}/GeoPeek-#{version}.dmg"
  name "GeoPeek"
  desc "Quick Look previews for GeoJSON files"
  homepage "https://github.com/serifsadi/geopeek"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "GeoPeek.app"

  zap trash: [
    "~/Library/Application Scripts/dev.serifsadi.GeoPeek",
    "~/Library/Application Scripts/dev.serifsadi.GeoPeek.GeoPeekExtension",
    "~/Library/Application Scripts/dev.serifsadi.GeoPeek.GeoPeekThumbnailExtension",
    "~/Library/Containers/dev.serifsadi.GeoPeek",
    "~/Library/Containers/dev.serifsadi.GeoPeek.GeoPeekExtension",
    "~/Library/Containers/dev.serifsadi.GeoPeek.GeoPeekThumbnailExtension",
    "~/Library/Preferences/dev.serifsadi.GeoPeek.plist",
  ]
end
