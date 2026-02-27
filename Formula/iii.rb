class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/v0.7.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "004ef814776944922f8abaa83fa0446ecb3f7fcf4f51d9b7ffff73e54caee25f"
    else
      url "https://github.com/iii-hq/iii/releases/download/v0.7.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "72d515fe53f630d7d240f581f6256d0c1a3389f8494e9e21d346c672017f0d34"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iii --version")
  end
end
