cask "wigify" do
  version "0.6.0"
  sha256 "c0d564baeaf556f854f9ac11568f909cecda30b5c555cb9b130b16d7c095d87a"

  url "https://github.com/wigify/wigify/releases/download/v#{version}/Wigify-Mac-#{version}-arm64.zip"
  name "Wigify"
  desc "Create and display custom HTML/CSS/JS widgets on your desktop"
  homepage "https://github.com/wigify/wigify"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Wigify.app"

  zap trash: [
    "~/Library/Application Support/wigify",
    "~/Library/Preferences/com.wigify.app.plist",
    "~/Library/Saved Application State/com.wigify.app.savedState",
  ]
end
