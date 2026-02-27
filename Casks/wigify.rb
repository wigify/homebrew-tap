cask "wigify" do
  version "0.5.5"
  sha256 "7df53dbb09ab572f50ac829b732e7c206c15c9d2aee672a30f47dc699af43dea"

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
