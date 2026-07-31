cask "brightness-controller" do
  version "1.11.0"
  sha256 "e866fdaec1bd1d0f4b7dcf01fb0b03e1fc5ab27cf5c6c6dab402ac0f1c0b6435"

  url "https://github.com/back2business/brightness-controller-releases/releases/download/v#{version}/BrightnessController-#{version}.zip",
      verified: "github.com/back2business/brightness-controller-releases/"
  name "Brightness Controller"
  desc "One slider for every screen, including external monitors"
  homepage "https://github.com/back2business/brightness-controller-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Brightness Controller.app"

  zap trash: [
    "~/Library/Application Support/Brightness Controller",
    "~/Library/Logs/Brightness Controller.log",
    "~/Library/Logs/Brightness Controller.old.log",
    "~/Library/Preferences/com.maxduerr.brightness-controller.plist",
  ]
end
