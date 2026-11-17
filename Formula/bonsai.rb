class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.6.0/bonsai-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "80eea0aafd0c587af22b350d98e11d8dce5758ffc10e59ae7856a22d7775de27"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.6.0/bonsai-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "dea97a6af4d09c18690fc124b7fed28f82084b6f1daaca13f1660b3ff400819a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.6.0/bonsai-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fcd02bdd7d270c614e285410eb3657e45c19fc794017ac4fff3ed798b386d7d9"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.6.0/bonsai-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b2156877b0ec3d7b37437b4812418da3d70fe8bcde13a9c06bdd12509c183f4a"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
