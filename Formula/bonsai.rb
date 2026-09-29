class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.15/bonsai-v0.3.15-aarch64-apple-darwin.tar.gz"
      sha256 "38f46660a7ecd5dd74cd1b88236c3385ef371fa4a308acfa21f3116ac40867bb"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.15/bonsai-v0.3.15-x86_64-apple-darwin.tar.gz"
      sha256 "cf2a22c049a96b2de904aa942368ba1bd5b606f18c15fc7212f98f4738f2a02a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.15/bonsai-v0.3.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8afc4767fb0fbcfdac8b9a33866ac42e25ae0ed9ce45a77dfb92bd8175b5a670"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.15/bonsai-v0.3.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d4f873816529dd7b4c1fa6efab7c20ac4e1aa7214b9cd6c2ac20448dd18a013"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
