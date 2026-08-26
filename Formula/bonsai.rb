class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.7/bonsai-v0.3.7-aarch64-apple-darwin.tar.gz"
      sha256 "2cf11ba51ff65eec31b3a14f3a2459dd5c9286c6a8e5d466bab4ccf818c09afb"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.7/bonsai-v0.3.7-x86_64-apple-darwin.tar.gz"
      sha256 "da38c2bd2c2e3a3bb4e9e51d0a8102ea7de93391a36d75bb50337821dad10f0b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.7/bonsai-v0.3.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f96873c1df15122ff7f8c9bf547bc3dc9788649ca3e25046525fae2d96beec91"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.3.7/bonsai-v0.3.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e75629a372728f13de1627f4253d26c278a01dfbd483af1e909dd3c230c44c2"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
