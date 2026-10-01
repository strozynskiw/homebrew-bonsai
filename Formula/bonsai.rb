class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.16/bonsai-v0.3.16-aarch64-apple-darwin.tar.gz"
      sha256 "7dbb6e1243a0d9c75fc362c4719c62def053c130805a73e6d64c477a1319c22d"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.16/bonsai-v0.3.16-x86_64-apple-darwin.tar.gz"
      sha256 "a2f7fccea6c2191bf2567b64c5afabe84e5185baeba32772c89b968008ed087c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.16/bonsai-v0.3.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e4d5a232e3e5c1a71db17c91a771d6120a979acc555a351f5cc93f8980246a58"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.16/bonsai-v0.3.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d6ab984f051b0e0e9708a478351680a66b4e676e011344220a089d1c9bf3d32e"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
