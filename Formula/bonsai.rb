class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.2/bonsai-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "2306182ee8fada8650f9be05a7add62f33334fe50c3f7cef94ee6d0320ae85c1"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.2/bonsai-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "ee6ef15816d3a1838c6fb44dc8c91ca751fb78b49e1c6690d3456ab5aadf0dec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.2/bonsai-v0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6fcbc81b7ab866f9b87a3e62b010cf85ad0482bfca7742dac665ed2edce57d4f"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.2/bonsai-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d0b8f5a0c3c5d12757c84822132eb79358710ef4c0790c3ccc67d3d8e8b6ce1"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
