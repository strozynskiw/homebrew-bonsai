class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.12/bonsai-v0.3.12-aarch64-apple-darwin.tar.gz"
      sha256 "c4d432f4ec93370810b3efb41385308e15ee05659c68fe5c08ca08c8cdad6261"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.12/bonsai-v0.3.12-x86_64-apple-darwin.tar.gz"
      sha256 "2facc49c56d37e520175dd18522d550d3fb32bfa7c9cc925027954c3fc69c8e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.12/bonsai-v0.3.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f142b5c3a78b1e683a723c411c1fb43f9cb8ae281481715fd0578958a8033ca6"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.12/bonsai-v0.3.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e7c99f69d0d767824f33f960fce02ce923fe0c48aa416900ca663d2bd846556e"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
