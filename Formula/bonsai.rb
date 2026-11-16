class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.5.1/bonsai-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "d863462b0167c02be6ca718c49956ec6a3ac2a92bef6c9c51a50e070fad52bd8"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.5.1/bonsai-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "66b5beaeedb4dab5f16c04163bf382e9c866e36428960d2283b0b3fc27867a98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.5.1/bonsai-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "24f38974c251dee5fc85f45d080d9b33d689cb341a17af1dde6733e0e003b1d4"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.5.1/bonsai-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92f33e82a9bfb39588c414c1d3a24d09c5bf1c504c72ddd9f648a3a41620b8f9"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
