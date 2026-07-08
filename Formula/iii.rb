class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.21.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.3/iii-aarch64-apple-darwin.tar.gz"
      sha256 "5e7e0d889bd9a5144647008c343a3e0e40bf9e90358943c29ea76cbf16220485"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.3/iii-x86_64-apple-darwin.tar.gz"
      sha256 "5013bbf81f8c4c64eeed0742c8697d28a4259cbfa2904c4f4b99bbfe9017be0b"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
