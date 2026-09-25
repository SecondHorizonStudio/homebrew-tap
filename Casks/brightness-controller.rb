cask "brightness-controller" do
  version "1.16.3"
  sha256 "e0dd3183596dbb6ad491c99bcc2e0409504ebedd803348c633566fb60a7f9201"

  url "https://github.com/SecondHorizonStudio/brightness-controller-releases/releases/download/v#{version}/BrightnessController-#{version}.zip"
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
