class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.2.10/bonsai-v0.2.10-aarch64-apple-darwin.tar.gz"
      sha256 "e7381702962456fe335105c535803a26c56428fe74053d30aba745e6beb7b01a"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.2.10/bonsai-v0.2.10-x86_64-apple-darwin.tar.gz"
      sha256 "d97fe0b6eb6da78ffb4c76b479f05d88913fecde7f6dd32b1b7092e6d0bb4592"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.2.10/bonsai-v0.2.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8192678044fa512ba8e3ec129afd2c818011e7656cc998aa947abf23672aae96"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.2.10/bonsai-v0.2.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c6aad53ce5f919b4adf8bc2e3b97846704dbd8401a7e0754b949c09a3f76fdb1"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
