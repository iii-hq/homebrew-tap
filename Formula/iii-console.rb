class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.24.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.0/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "caa7a615bca6f80b220ca60491b5a9a6be61306ccddf11a70d08f41e22448da0"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.0/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "a62130ac1651fad658c8947f333fd9b7fad7f50a7cbf9de05cfbafb30a2f57b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.0/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "797989872c6729583a2052e9656a894152cad200a011d195270f48256b9959ce"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.0/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f81fa4e614fa377bc51e19bac833aefd9f48bd5a160a7ab8c5363417916840a9"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
