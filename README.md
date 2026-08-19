# SecondHorizonStudio tap

Homebrew casks for Second Horizon apps.

| Cask | What it is |
|---|---|
| `brightness-controller` | One slider for every screen on your Mac, including external monitors |
| `readout` | Menu bar instrument panel: network, disk, temps, fans, CPU, memory, plus optional fan control |

Install with the fully qualified name. Homebrew 6 requires trust for
third-party taps, and a fully qualified install trusts just that one cask,
so this is the whole procedure:

```sh
brew install --cask secondhorizonstudio/tap/readout
brew install --cask secondhorizonstudio/tap/brightness-controller
```

Upgrade the same way:

```sh
brew upgrade --cask secondhorizonstudio/tap/readout
```

If you'd rather install by short name, trust the cask (or the whole tap)
first:

```sh
brew tap secondhorizonstudio/tap
brew trust --cask secondhorizonstudio/tap/readout
brew install --cask readout
```

## Moved from back2business/tap

This tap used to live at `back2business/tap`. GitHub redirects the old
name, so existing installs and `brew upgrade --cask back2business/tap/...`
keep working. If Homebrew warns that `secondhorizonstudio/tap` is not
trusted on a machine that also has the old tap, pick one:

```sh
brew untap secondhorizonstudio/tap
```

or move over for good:

```sh
brew untap --force back2business/tap
brew install --cask secondhorizonstudio/tap/readout
```

## Why a tap rather than homebrew-cask?

The main Homebrew cask repository requires an app to already be popular
(roughly 75 GitHub stars, 30 forks, or comparable evidence of a following).
A newly released app cannot meet that, so it lives here until it can.
Installing from a tap works identically; it just needs the tap name once.
