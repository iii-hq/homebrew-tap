class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.11.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.5/iii-aarch64-apple-darwin.tar.gz"
      sha256 "459f57ad8235c5797f1d3dcf8e4333bf346b6f781ba85ea181af1c0363a40ef8"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.5/iii-x86_64-apple-darwin.tar.gz"
      sha256 "ac88ca84a70cfc37d00c617eaf3743857401987cb108baa5489b21c276af7310"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
