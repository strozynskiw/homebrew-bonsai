class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.5.2/bonsai-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "3d17ee06b106e263ce7302641be6535514c20398ff5ba36444caf8a5b87f1fa7"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.5.2/bonsai-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "8814c533a24b4b5cff3a61ba4adf3b461a9293c0c19bf4a32e43ab95ec30fa80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.5.2/bonsai-v0.5.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4a75ce919e2533cd7eb14287b7bfcf9d2589de0d425dcc662149c12eb12a6aee"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.5.2/bonsai-v0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "57ebe5964956fe83184d6a5e5e01632547c843050cd2e14a30c80067491edffe"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
