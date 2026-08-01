cask "readout" do
  version "0.3.0"
  sha256 "bad94a07e185c5d30139aa51e7f8bbac74495b61b090c405b67e47b3b2ae6733"

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
