class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.3/bonsai-v0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "86ac80768597398d4e007b22a79a0804880526c032ea592c4009c79d39a58157"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.3/bonsai-v0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "93bb2f8683c1d748f1af60341fde35e007ef07f09bd8c22ea42240314f6b9ef9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.3/bonsai-v0.3.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc7a231d55bec2c66cbd6ee90e73420e5be0d9743b7d55cdc3431f1ed7850ee1"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.3/bonsai-v0.3.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9278e22d7a549f82d76da0b23d35540e21adaff41c8078d6099414e73f77b3b"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
