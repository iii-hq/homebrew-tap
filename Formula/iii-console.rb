class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.11.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.2/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "72345bdc028b07b3cb68d61724b895e055275201ed3a4b96f36edb504c20f35f"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.2/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "594661d225cada737ecaf720514d904b71b6cfcfd4c05a01bf477ac8d1372f29"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.2/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9e6d9f7878c2b228570c621cf8b4d87e58f893b790b5897fd0fff07c6964ff83"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.2/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9aed749e5ded5c79cdef7ee45d395e921b6ac2adebc1cc1281c5965fdf66303c"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
