class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.10/bonsai-v0.3.10-aarch64-apple-darwin.tar.gz"
      sha256 "b093eacba2eb74b972d44034d5029e6738d9185a4a481a06cad6d1ecc8cb94f6"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.10/bonsai-v0.3.10-x86_64-apple-darwin.tar.gz"
      sha256 "323e2af0f02b2698a6cb0450dfebf004e1f931d9ae702a9c6b3b21891ce1deac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.10/bonsai-v0.3.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "97050d86b433b1d4adf5c0ff0c59e05b5f38f53dd5d11755e63f672fdd4ff623"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.10/bonsai-v0.3.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b14f384534b8c260cc831cfc7b0e5d4eae0668eca485509368be9be023c72470"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
