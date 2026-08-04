cask "readout" do
  version "0.4.1"
  sha256 "07debd3a1c015f17f789ee165ed227bf200abaee1c300c5d66159726c8daab1b"

  url "https://github.com/back2business/readout-releases/releases/download/v#{version}/Readout-#{version}.zip",
      verified: "github.com/back2business/readout-releases/"
  name "Readout"
  desc "Menu bar instrument panel: network, disk, temps, fans, CPU, memory"
  homepage "https://github.com/back2business/readout-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Readout.app"

  uninstall launchctl: "com.maxduerr.readout.fanhelper",
            quit:      "com.maxduerr.readout"

  zap trash: [
    "~/Library/Application Support/Readout",
    "~/Library/Logs/Readout.log",
    "~/Library/Logs/Readout.old.log",
    "~/Library/Preferences/com.maxduerr.readout.plist",
  ]

  caveats <<~EOS
    Fan control is off by default. Enabling it (Settings > Fans) installs a
    privileged helper and macOS will ask you to approve it once under
    System Settings > General > Login Items & Extensions.
  EOS
end
