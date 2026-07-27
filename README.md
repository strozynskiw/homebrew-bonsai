# Homebrew tap for Bonsai

Install [Bonsai](https://github.com/strozynskiw/bonsai), a TUI coding agent with multiple LLM provider backends, from its prebuilt release binary:

```sh
brew install strozynskiw/bonsai/bonsai
```

Homebrew manages upgrades for this installation, so Bonsai defers its built-in self-updater:

```sh
brew update
brew upgrade bonsai
```

Uninstall it with:

```sh
brew uninstall bonsai
```

## Other installation methods

Without Homebrew, use Bonsai's verified binary installer:

```sh
curl -fsSL https://raw.githubusercontent.com/strozynskiw/bonsai/master/install.sh | sh
```

To build from source instead, install a recent stable Rust toolchain and run:

```sh
cargo install --git https://github.com/strozynskiw/bonsai.git --tag v0.2.5 --locked
```

Release archives can also be downloaded directly from the [GitHub releases page](https://github.com/strozynskiw/bonsai/releases). Choose the archive for your OS and CPU and verify it against the matching `.sha256` sidecar or the signed `release-manifest.json` before extracting it.

## Maintaining the formula

For each Bonsai release:

1. Update `version` in `Formula/bonsai.rb`.
2. Copy all four archive SHA-256 values from that release's signed `release-manifest.json` (or matching `.sha256` sidecars).
3. Run `brew audit --strict --formula Formula/bonsai.rb`.
4. Run `brew reinstall --formula ./Formula/bonsai.rb` and `brew test ./Formula/bonsai.rb` on a supported host.
5. Commit the formula and documentation update together.

The formula intentionally pins release assets because Bonsai releases may be GitHub pre-releases and should not depend on Homebrew's default latest-release detection.
