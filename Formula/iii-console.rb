class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.24.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.2/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "7126c76ac373042a34d9a171f6ac3ef2faf5e0c11aa701ad524144b1fd96e835"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.2/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "5d9b2713384b108ce56cf4287cb72db9a7991b46d087c05bf8b0208e2e7921ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.2/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ba6159633e48705793060c43d8768adfafe1b50a7e4d37c0afb7732e1d6e71de"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.2/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fcc80ee36c0d6bba8d79d0e4c9f74e7069604ee25de37b4738a969b94c5d3318"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
