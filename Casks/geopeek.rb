cask "geopeek" do
  version "0.4.1"
  sha256 "1599113e78b97d86ea1f988a304fdfa13345e2678972449e1e531b5fe0b7db30"

  url "https://github.com/serifsadi/geopeek/releases/download/v#{version}/GeoPeek-#{version}.dmg"
  name "GeoPeek"
  desc "Quick Look previews for GeoJSON, KML, KMZ, and GPX files"
  homepage "https://geopeek.app"

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
