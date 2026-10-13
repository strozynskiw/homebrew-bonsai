class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.1/bonsai-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "dc34af1e0367d739f0f8a0d161c0beb89726ebf981b45b16ad87823adba612b6"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.1/bonsai-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "fe72e32663e21aaaf423d57cd8f34b6d4739724cedff5e695fc7dd9e8c78a895"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.1/bonsai-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa5647b715d71d0cc98f5d2f59543a1c8afe440052f80568e0a8cfa0706a9280"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.1/bonsai-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "44b384ec65857cfda8ecadbf3895f7e4f58d8c93ade1a09308a2a570f819d4e8"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
