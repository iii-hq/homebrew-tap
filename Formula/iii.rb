class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.19.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.7/iii-aarch64-apple-darwin.tar.gz"
      sha256 "d0c746dc37e013cef62469ec3ea262b63e3d6207f8377689d8016cd27717a555"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.7/iii-x86_64-apple-darwin.tar.gz"
      sha256 "33094f46f2b100350aa485f8b9563fa96217e3e4d3fe521bdda93f3f76c07fb6"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
