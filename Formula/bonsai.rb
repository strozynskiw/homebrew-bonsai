class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.2.8/bonsai-v0.2.8-aarch64-apple-darwin.tar.gz"
      sha256 "df2701f0d802e5f3fea07849e6f136850f3255f0a696e1fb1d651ec798cd134b"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.2.8/bonsai-v0.2.8-x86_64-apple-darwin.tar.gz"
      sha256 "d01ef2c1c16972540b24c5f7f50d6cc37742e7e87185b9a8ca5ca91ba8e81d94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.2.8/bonsai-v0.2.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "813629272f85380c635b762ab93c913a69e1755e831c22d9450becc3dd2471ac"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.2.8/bonsai-v0.2.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "43d9f06ec9fab29e0f3a9e5ee368cf61b2502cf4aa973626ba216607671a221c"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
