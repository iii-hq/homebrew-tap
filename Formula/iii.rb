class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/v0.6.2/iii-aarch64-apple-darwin.tar.gz"
      sha256 "80e94268f848c202f4d0cb020c840f51a8e3315245447369f9c1de6dbcbef2c3"
    else
      url "https://github.com/iii-hq/iii/releases/download/v0.6.2/iii-x86_64-apple-darwin.tar.gz"
      sha256 "459495a3baa9a06338dc262b0edf52bb2bd79ccd18a24b6351d3e91b4fdd78d2"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iii --version")
  end
end
