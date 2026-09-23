class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.14/bonsai-v0.3.14-aarch64-apple-darwin.tar.gz"
      sha256 "7cc6d618dde6d258a2e50477f81bb0fd21b3b334318f2d11ee22d2d6a8d1b57d"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.14/bonsai-v0.3.14-x86_64-apple-darwin.tar.gz"
      sha256 "3bd263f13a36fb3574587ab49ac2fa2ad899b18abe609aa458ab60ab0d78af88"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.14/bonsai-v0.3.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "05b68a9f59ee8bdab5cf351a9c0ca1c52224bee01e7f284b4b25de5370b37808"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.14/bonsai-v0.3.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15eb9adb9661141564b730703e041951b733fd0e497ac64a584f6d77cc53d102"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
