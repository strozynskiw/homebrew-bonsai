class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.6/bonsai-v0.3.6-aarch64-apple-darwin.tar.gz"
      sha256 "4044a5dd0188905c7e374dc58133446ef6ebf37d11a93754c3da04b054d21035"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.6/bonsai-v0.3.6-x86_64-apple-darwin.tar.gz"
      sha256 "6356281f4d71ba9a5a2fecc2b76918ea90dcf7cd42320a26797ea4485bf96f98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.6/bonsai-v0.3.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb55e55d1e1a510c833f11267b241ac2e142335578175e5457899b741dc87ff9"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.6/bonsai-v0.3.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6346a114453fe1717a1a9880af4575992fe4a48ba03679b9941e9b70dafc5c7a"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
