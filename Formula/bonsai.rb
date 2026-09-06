class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.8/bonsai-v0.3.8-aarch64-apple-darwin.tar.gz"
      sha256 "5e07d74615d524e217c5ac4ec3658388da2420836e7f56485bfee5c3fa2552bc"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.8/bonsai-v0.3.8-x86_64-apple-darwin.tar.gz"
      sha256 "733455a7708d7848539909e12c897bdb05b4968f25833f9d437ab3f9a87ba947"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.8/bonsai-v0.3.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9fdc11bf1c7cd3f97bf6c64ce783ff41b3bae63c74f3b4a14d67a353abaa7d5"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.8/bonsai-v0.3.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2764227ca7aee3d3864194d92a26c5f67bb507a36c22fb594579602908870a09"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
