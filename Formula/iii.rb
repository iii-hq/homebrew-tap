class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/v0.5.2/iii-aarch64-apple-darwin.tar.gz"
      sha256 "3fc8585b6a8373235cbf41dac65e20aad89d3e3d2ad18424babb8c25cfe0c1b1"
    else
      url "https://github.com/iii-hq/iii/releases/download/v0.5.2/iii-x86_64-apple-darwin.tar.gz"
      sha256 "b43162dd67a278f3bdee0adb15aa7a8e26e339b2b4360a9dc9a56ecd99344110"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iii --version")
  end
end
