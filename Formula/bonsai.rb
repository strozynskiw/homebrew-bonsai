class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.17/bonsai-v0.3.17-aarch64-apple-darwin.tar.gz"
      sha256 "4d468cb43607060b7fc929de9145e347a066d08a417432e283c1b00342beeb26"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.17/bonsai-v0.3.17-x86_64-apple-darwin.tar.gz"
      sha256 "1d670def5afb09cf5c9bb8dee997c44da1b3f33a4ccc82aded031e4a4e39eabc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.17/bonsai-v0.3.17-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "89c907642814bce14d40ee751f1e39163814070a77127d98d97f9603b598ff24"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.17/bonsai-v0.3.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af178c7623e761ae44fa52270887d374ba53904988346c2b3951c8a2ea24b38a"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
