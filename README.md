# back2business tap

Homebrew formulae and casks for Second Horizon apps.

| Cask | What it is |
|---|---|
| `brightness-controller` | One slider for every screen on your Mac, including external monitors |
| `readout` | Menu bar instrument panel — network, disk, temps, fans, CPU, memory, plus optional fan control |

```sh
brew install --cask back2business/tap/readout
```

Or tap once and install by name afterwards:

```sh
brew tap back2business/tap
brew install --cask brightness-controller
brew install --cask readout
```

## Why a tap rather than homebrew-cask?

The main Homebrew cask repository requires an app to already be popular —
roughly 75 GitHub stars, 30 forks, or comparable evidence of a following.
A newly released app cannot meet that, so it lives here until it can.
Installing from a tap works identically; it just needs the tap name once.
