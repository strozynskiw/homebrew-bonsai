class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.2/bonsai-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "0707fe50384ceac47ffe93c7db7431047471cd578ad8c828aff170494621a7dd"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.2/bonsai-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "efbb8207c3196396cb474b17c0020999b1dbc2756da3f3dae319c496cea76757"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.2/bonsai-v0.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0f88105f115012b4bd11ad45a8925d49db74cf92c8f08f3f9329019e27815545"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.2/bonsai-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "66d802364c4aefadf56294cd0e96f3010f6be3fdc682a67e65bbaffa20d18062"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
