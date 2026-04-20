class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.11.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.1/iii-aarch64-apple-darwin.tar.gz"
      sha256 "518eedab3b6ffeed257d171e1d4260b832040525ab92e642b7be4bc027aaeec0"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.1/iii-x86_64-apple-darwin.tar.gz"
      sha256 "b1bc0ed03083cab061b757dd8ae9845301ff23000ef1cc408a4a3682652be38b"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
