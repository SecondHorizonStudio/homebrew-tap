cask "brightness-controller" do
  version "1.16.0"
  sha256 "98ae886adef0ecde5d5cbc8ac874b8925b6c49f054a106e00bdbb43494d0cb59"

  url "https://github.com/SecondHorizonStudio/brightness-controller-releases/releases/download/v#{version}/BrightnessController-#{version}.zip",
      verified: "github.com/SecondHorizonStudio/brightness-controller-releases/"
  name "Brightness Controller"
  desc "One slider for every screen, including external monitors"
  homepage "https://brightnesscontroller.com/"

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
