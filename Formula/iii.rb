class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.19.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "ecdc4869b9ff8c6105ab43f688e0fff5faa1dde830c6655ace98c1e67238b943"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "4970c7bbb22a391a9d328554fed2027bbcf3f321400f7c58b1c7cff29022f699"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
