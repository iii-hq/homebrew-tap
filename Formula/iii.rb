class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.21.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.4/iii-aarch64-apple-darwin.tar.gz"
      sha256 "fc7e9e8e53deec6d9051a839ccda6ad2dcafec94e5e8c29a1a3d4837e7473fa5"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.4/iii-x86_64-apple-darwin.tar.gz"
      sha256 "4b0ce42feb66c883a95be4fb946b1d876022a3995a21d02273b6911a75d32f9e"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
