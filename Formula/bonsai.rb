class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.4/bonsai-v0.3.4-aarch64-apple-darwin.tar.gz"
      sha256 "1d146cddcd160fcc9dae12c633b677321c3f05c59ed84c5039094783c188744b"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.4/bonsai-v0.3.4-x86_64-apple-darwin.tar.gz"
      sha256 "0c85e5914aeb562b9f344e856757e843830a3595e5b51e454672ffc99e41d00b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.4/bonsai-v0.3.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dcb79c1d1fca5f8c1f33c03bd6176bc9388455812cc465639de2aac2f65466bb"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.4/bonsai-v0.3.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cef29468ec3bb874c90f9f9be81322a4544af0f999b04fd8eb23d0dfda72e950"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
