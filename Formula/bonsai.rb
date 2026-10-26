class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.6/bonsai-v0.4.6-aarch64-apple-darwin.tar.gz"
      sha256 "9a2a40d0c5390b7ebb4921d79be1439ad9a3224fb299801c1cae3668102df8a9"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.6/bonsai-v0.4.6-x86_64-apple-darwin.tar.gz"
      sha256 "e466975fb133c6f7e04fdb984ac6121090ef9b6f62bcf269fab2689d0eea894c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.6/bonsai-v0.4.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "836feda2baefff98b651f8bfd5d189a40c2a383fa38d5ba38c5265b38cf2ad9d"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.6/bonsai-v0.4.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "85aaf48e267d28c5343bb33ccbf6cf77ba44183e115a8907e9d8dd634fbead08"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
