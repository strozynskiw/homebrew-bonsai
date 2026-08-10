class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.5/bonsai-v0.3.5-aarch64-apple-darwin.tar.gz"
      sha256 "4d3e070979dcd185eb9d7456c844736f673311a172dcd092a8a621f87d22e6d6"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.5/bonsai-v0.3.5-x86_64-apple-darwin.tar.gz"
      sha256 "8926fd0752fbe76ad63c7044ef570b1332ec8d8f790e0424b8240070d81f59a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.5/bonsai-v0.3.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7e9c901352a8f4c66585a9aa16f9e6b9b598ecc8bdb7a13d2928475a6dd0264"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.5/bonsai-v0.3.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae2f00e21c9afd1ca0dacd89a5280ae26789f9da64a01708e90bfe8966fd620f"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
