class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.0/bonsai-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "0e7b692306efcdf467b252a2ede36c389461686a6282ba7ae227777bfec0915e"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.0/bonsai-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "0aa609afdb05795105f762c81e8c7fd34b6c7cf20548a628851e404e84f2950a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.0/bonsai-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e68fd86fe00df5850b1cc4601942c00a6c09928e2a38f9927359051dfe6d7b4"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.0/bonsai-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "51e02ca47107e7babb2b98abfd91435af4829ff974da8f85f82b57574712e48c"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
