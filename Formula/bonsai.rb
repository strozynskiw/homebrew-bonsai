class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.13/bonsai-v0.4.13-aarch64-apple-darwin.tar.gz"
      sha256 "f1676b244bef6eab5936b83ec8a9d77d6fabf4f0ca7e6c8ab97c01565c11ff87"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.13/bonsai-v0.4.13-x86_64-apple-darwin.tar.gz"
      sha256 "3a5b66792519d4979da9bf24113eea0f2371393cc191e6adb20019c83f897ef4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.13/bonsai-v0.4.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "80fcfa132477cffbe9cb4803c1a19247ce31b0522543ac5d5ef0e0b1a00e095d"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.13/bonsai-v0.4.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a317e6fea219e70bd2354ee74e1f270e174e018f5e4eed740893092d94af243"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
