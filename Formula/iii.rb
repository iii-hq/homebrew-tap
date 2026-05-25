class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.13.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "c44064b9ddc86b5f27b85653d588d2f15579a3d6d208af832f3f2a6a33cdcc98"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.13.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "749ad005f4d9c3404e4e7e9b76e4e4ee671fa669e05e23b2e323c1a444b6d560"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
