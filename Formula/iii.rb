class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.21.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.6/iii-aarch64-apple-darwin.tar.gz"
      sha256 "ceb99ac342fbdb07fafc1adce4ea853a782c3790da7020b630b95beb59bacedd"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.6/iii-x86_64-apple-darwin.tar.gz"
      sha256 "2eb4c4c7d0109122de50ee92b2abfb10daf5e9624b369982057df62f9d31c87c"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
