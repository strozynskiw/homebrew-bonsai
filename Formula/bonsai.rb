class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.0/bonsai-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "b34847685933e80eb8b91eb912dff54e9135486c1e021df3d8ad010b57f26b64"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.0/bonsai-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "f0e884749ac97567a4ccc8752ea3941eaeeda47a9cbb523813a8e006e30e950e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.0/bonsai-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a44cd0f41fa5ffd807d8f87878e281fd5735be043d6aa4fe8d86c980ed4cfdd6"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.0/bonsai-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3f832dd92c15c4de29cbdeb5d5a206591b2c0341dac302b45fe510148efcba8b"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
