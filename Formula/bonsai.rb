class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.2.11/bonsai-v0.2.11-aarch64-apple-darwin.tar.gz"
      sha256 "513ffa3e64a498814f78201780007026635e91979f8f5ee30b635a0b3d2966d7"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.2.11/bonsai-v0.2.11-x86_64-apple-darwin.tar.gz"
      sha256 "c1f03b6f937ccf860e4c1d87c11adba371c29486905aaf777c0d54639c3695a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.2.11/bonsai-v0.2.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c3c1379fa621159fb67abbd6c3b729ade6d15c758c15321a075b441604d363e4"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.2.11/bonsai-v0.2.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "79cb0d85ecf5576c8ddc21d0d016e357baacbd13d2a4e9f5acbd0cfc54fd7cf5"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
