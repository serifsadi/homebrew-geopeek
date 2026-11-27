cask "geopeek" do
  version "1.0.0"
  sha256 "5eb51ca851e7d0e7f7db1d6b0f6dc2e6eac524ee076dbd37659940bc4650cf93"

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
