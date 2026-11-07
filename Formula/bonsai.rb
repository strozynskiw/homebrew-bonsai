class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.9/bonsai-v0.4.9-aarch64-apple-darwin.tar.gz"
      sha256 "4de474024e60047998a4050e5d2d5c97b540d2f6145c17415962188be2aa5431"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.9/bonsai-v0.4.9-x86_64-apple-darwin.tar.gz"
      sha256 "2f735164b51cdb1a8619429ef3eaec1236d1aaa35316bf12d1e2ad7fc369dfaa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.9/bonsai-v0.4.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ef25970ae37df7883110d5fadf9c828879ce69ca86fa9d8d44acc42c023385e"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.9/bonsai-v0.4.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6738297e128f1553e8bbb5814a3ffd1130007bb2387bd4eebdedad6116ee1c2f"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
