cask "brightness-controller" do
  version "1.16.2"
  sha256 "3ed8b6dc1f6a37c3c149640072b78a1f62c3cad39b61386e4da89bb35774e67a"

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
