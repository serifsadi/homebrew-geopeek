cask "geopeek" do
  version "0.4.0"
  sha256 "ac9f2095155fda712a2595fea25e37b28ef7f4100b223dbc827765bdf6f21ed2"

  url "https://github.com/serifsadi/geopeek/releases/download/v#{version}/GeoPeek-#{version}.dmg"
  name "GeoPeek"
  desc "Quick Look previews for GeoJSON, KML, KMZ, and GPX files"
  homepage "https://github.com/serifsadi/geopeek"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

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
