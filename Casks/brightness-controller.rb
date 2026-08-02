cask "brightness-controller" do
  version "1.15.1"
  sha256 "e3fa81c9d61fa993cfed7d4d2be2efdf43e3dca8b6528c61f63ab9bc7a897dc8"

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
