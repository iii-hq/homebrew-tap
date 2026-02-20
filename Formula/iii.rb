class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/v0.6.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "bfd0945d563ef8c1e6e0bdb1e2db68f1c23d00f3864a3bd743364d86e005f22e"
    else
      url "https://github.com/iii-hq/iii/releases/download/v0.6.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "55017828b584e59c092a32ac2c071f9a0e08992ce3edeeb85a707e94e6ec15f2"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iii --version")
  end
end
