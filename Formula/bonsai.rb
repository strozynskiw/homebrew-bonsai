class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v#{version}/bonsai-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f41ff5b4536894e348e62df964b48d67b8feeab3e537bd64d7d7b7f02f1df669"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v#{version}/bonsai-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a9aec7ff236fb6c0da6ee71cc7fe12e1f08cb317e697f7d3c69e33812d2bc375"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v#{version}/bonsai-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7194804bf42d8317cf7ea45ec68cfc8851e8bc5b4adbe746747ebaf6e4302ace"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v#{version}/bonsai-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "87c34cc9f61c61d524222e33b8c72906bdf1eb1a607af7ebb58211ac26f4d1e8"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
