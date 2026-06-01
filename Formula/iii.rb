class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.17.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.17.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "3ce6cafbb61f70fa41a44be6707d70485ef7926cc845787748d0fdbb0fa57f41"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.17.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "f81234ed3fba51eadafb21cf488421d76f1e0759a70afb8182ceee9535e1d492"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
