class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/v0.3.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "25483ac33a022fd1fc18b91e305b7e62ea90a938c09baebf4d4aa29282242876"
    else
      url "https://github.com/iii-hq/iii/releases/download/v0.3.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "ab444b92b80a9452b72917fd51f466c123de75b778cbeef5da5ab637834fdb18"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iii --version")
  end
end
