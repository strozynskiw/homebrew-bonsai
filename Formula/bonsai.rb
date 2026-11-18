class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.7.0/bonsai-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "00b7b83906519e0b1a5137b6f3e1dc3233d3d4596da254a5ade4a6e37033126d"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.7.0/bonsai-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "2c1aa2aba44053f23ae24aaf658ab6faee5ab46efbd042bc89159c0d4aa1fff4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.7.0/bonsai-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c1c3a77c3009b4c2e8ade9cd0316a4d5b30b89cb69ee0436f1f0f5737a673aeb"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.7.0/bonsai-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "51fcf3eaf022b75b71d1eb59075b017aacfb27f3446734eb04d6d1f4e1ad6a9d"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
