class Bonsai < Formula
  desc "TUI coding agent with multiple LLM provider backends"
  homepage "https://github.com/strozynskiw/bonsai"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.5/bonsai-v0.4.5-aarch64-apple-darwin.tar.gz"
      sha256 "34d10ac367699e8717f71283f8de7c88b259797b005da383842ceb42ef180061"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.5/bonsai-v0.4.5-x86_64-apple-darwin.tar.gz"
      sha256 "500799bc7a1453f41729e06f3b98247d052b575978bcd1babfc18f2f91067bf4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.5/bonsai-v0.4.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0eae7f12ef9750fc73d68d8c56890c19e27f8fec80b37155b6318b4f37dd477d"
    else
      url "https://github.com/strozynskiw/bonsai/releases/download/v0.4.5/bonsai-v0.4.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48f4e943b1b45b894cd662f202123e28b8bd3228cca8a01e3fc33232c7eec9a0"
    end
  end

  def install
    bin.install "bonsai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonsai --version")
  end
end
