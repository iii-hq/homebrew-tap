class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.10.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "0e29a78d275f9881b08d3a589769fb039fb6f5823997d14bbeda198ddcd5fb5f"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.10.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "c7937897c5bd7d457e87989b0b94c761ec1593ece29034c7d52bae669cb0341f"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
