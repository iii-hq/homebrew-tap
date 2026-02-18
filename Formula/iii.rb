class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/v0.5.3/iii-aarch64-apple-darwin.tar.gz"
      sha256 "92401b04f1d07911b5ed95fb36808359d2578daa5c7c8f108383087d1bcb692d"
    else
      url "https://github.com/iii-hq/iii/releases/download/v0.5.3/iii-x86_64-apple-darwin.tar.gz"
      sha256 "a314b4c99e41c3dea1909bf743436323eabbe0402ef002c924c28177d5352413"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iii --version")
  end
end
