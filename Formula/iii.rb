class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.19.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.4/iii-aarch64-apple-darwin.tar.gz"
      sha256 "b3a52bb4df88e8adf80747fac7fdf5730bace4cb0b17d5fe2fec8be4c42dcd75"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.4/iii-x86_64-apple-darwin.tar.gz"
      sha256 "c92585f325fbd1f02500fe1e120e3701c6d9d3fd1bd1b1bc47fbb05fa150cd84"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
