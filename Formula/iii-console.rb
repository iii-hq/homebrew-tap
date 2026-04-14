class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.0/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "610b6523a2e795cca6e04ca8bc49df5f49bd9e41d8d112e616abeff56a9f20fe"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.0/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "bae1920267249a079c529824305690b18946d07dba4431a7f8d35666c0db0a06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.0/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5b93ccc6cffb91f0908a21ec3d58ad0c70cdd44f15104aba1797536d24a67530"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.0/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa77b8c11ce6aeff45f725e505fe8bece6fe322affac89cd73d0be032204d1e6"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
