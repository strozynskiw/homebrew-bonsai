class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.3/bonsai-v0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "71a303ebe28c25b40107a34df9f5dcb0f46b7b8b79b8f1d0742ad7dafea59b58"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.3/bonsai-v0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "9377ac621c3c5f8d6f4765c6b4686a8090ac8dae25407f6a9846e7ea05082bd2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.3/bonsai-v0.4.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "05663f73ae33ddd2f6138b776ec58f25c19b457353fa52b719a760a7b4b19784"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.3/bonsai-v0.4.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "89f4cde31559f2bda742b5e22120b3bb68da17979d7021e8b5cb566030cce144"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
