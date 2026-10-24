class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.4/bonsai-v0.4.4-aarch64-apple-darwin.tar.gz"
      sha256 "46ab34f0d10cd19b9409539eaa592d487261fe9d7904e0e8fc034a8ae93103fc"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.4/bonsai-v0.4.4-x86_64-apple-darwin.tar.gz"
      sha256 "81e6571fb447b024e3da8650544db017bc12eac95ba6cef11dc84febf23b7c95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.4/bonsai-v0.4.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "874a570b157bc2a9f8c9378104b5cb37afa4fd947dcc7c88b663c10e37fd7059"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.4/bonsai-v0.4.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d6d94cecada956e45f2052d0b52377584fc3ee2795cfce850fa2bb1952edbf4"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
