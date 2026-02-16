class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/v0.5.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "c80d57ea95df1d9c499da132f0ac4e56a567f8ad99707ef43698e0983446fbf6"
    else
      url "https://github.com/iii-hq/iii/releases/download/v0.5.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "3bb78dfd67486c07b0856cc29c8f2a9f21377589e654234bac856a01148645f4"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iii --version")
  end
end
