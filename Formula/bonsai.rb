class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.5.0/bonsai-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "e9bf1331569e798b2849975a57dfa786d8414f2bb83d21db32e16101d7eab2c0"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.5.0/bonsai-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "d2331a673eeeac36e5d52b400325c2860e4edf40f774b1d58d4c0521f4d7eade"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.5.0/bonsai-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7a7e708e8906ff7575788e20f1bb3db5f42786b781a99872fa64f555310813f"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.5.0/bonsai-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e7d8ecd71b4ea6404dde5415ac2d81be269fa671cd37677f9e1cab0fd87eb2b"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
