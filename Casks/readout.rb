cask "readout" do
  version "0.7.0"
  sha256 "5cbe56e67644a9024db90f8251ab082e30ab8d31149fa67e1ad88a4beb5e1ebd"

  url "https://github.com/SecondHorizonStudio/readout-releases/releases/download/v#{version}/Readout-#{version}.zip",
      verified: "github.com/SecondHorizonStudio/readout-releases/"
  name "Readout"
  desc "Menu bar instrument panel: network, disk, temps, fans, CPU, memory"
  homepage "https://macreadout.com/"

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
