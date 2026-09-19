class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.13/bonsai-v0.3.13-aarch64-apple-darwin.tar.gz"
      sha256 "4d94fdfc03c0d7a748e433aeb7f898555dc742bceef7168f47ef4cfac39ef18f"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.13/bonsai-v0.3.13-x86_64-apple-darwin.tar.gz"
      sha256 "bc14457898a0b066e66c277aef91a23befcaa11302a0240eb604f4f13842c37b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.13/bonsai-v0.3.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aa3d3e0be67a211e7ff40638a88f27b6e9ab8a50ab803ab44a2bb977fd894c9d"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.13/bonsai-v0.3.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e1144e492b78c91fb6b2235adfec837268ee662cfb28d4319bd1ea603ae2365"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
