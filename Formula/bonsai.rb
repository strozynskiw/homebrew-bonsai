class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.9/bonsai-v0.3.9-aarch64-apple-darwin.tar.gz"
      sha256 "90309ec80039e5ee0221c4c9010a1b265fead60b75845fdcff834e9aa137912b"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.9/bonsai-v0.3.9-x86_64-apple-darwin.tar.gz"
      sha256 "c07f13c4df6803e90bf03fbf7c8a967001767fb68ec69ba5451ad5e2b83a1867"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.9/bonsai-v0.3.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e1cafade7fa5e63016fb665ce21d4fb568c74c7ed81078d9c4da3f1e69341080"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.9/bonsai-v0.3.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac882a1cfbfe5567f4c9722e3a1a0f519af85741b0b0dce443d0f2e4b4c54f08"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
