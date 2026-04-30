class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.11.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.4/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "258fb441f9b9c77970f7a224314f4454dbd0af62b36305b5c69bfd4852ffa941"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.4/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "00ccc4e5f8f75b2d29bf3d1b90495bddff3b5997d6dbedeae41817c65fb32093"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.4/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e16be68ac1eb85cc9140326af349fcf85ca34cf93b45595504f8ebcc3fafdf3"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.4/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b760ae2d096f270f7144bcbba137d05d0cadfda22726c7f14e5ab08c04dbbc8"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
