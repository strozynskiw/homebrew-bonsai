class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.11/bonsai-v0.3.11-aarch64-apple-darwin.tar.gz"
      sha256 "b581c2dfb4911b350c72bee318452060f4416c3be63c11d0676450d6d915a9a4"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.11/bonsai-v0.3.11-x86_64-apple-darwin.tar.gz"
      sha256 "c161bdbc68b94a339181fbd1cda3ba51ad78cbca96ca4e3b6652ec467ea17bf6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.11/bonsai-v0.3.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d6e53748063367cfb2309b6a8ad30e43b6158d1733092b54c6fc16581c90985"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.11/bonsai-v0.3.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de3b19ef8e4b213880f62b3111f6c55c818f79d1bc395c2cfebeb369065c2e63"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
