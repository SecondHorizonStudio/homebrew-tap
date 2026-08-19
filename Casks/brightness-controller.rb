cask "brightness-controller" do
  version "1.15.3"
  sha256 "3f6f6805bcffa1a8daed1af4d4dec8706b82a8d50db7454b49fb33707d22ed43"

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
