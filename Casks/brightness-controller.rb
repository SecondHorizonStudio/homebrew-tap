cask "brightness-controller" do
  version "1.15.2"
  sha256 "6d0710da6b5cbeea44c2e9279f2935ccf2d6d516f3d0a7d6b3f8e47867ae0b56"

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
