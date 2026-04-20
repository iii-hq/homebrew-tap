class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.11.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.1/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "2eaf38ce967de71dea0542facd81090a45b26867c3a3a960eedb917f32929c43"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.1/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "79362324f9be02eb701896b6aaa66168274dd57883ea930c502e8bc928df830b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.1/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a9b96c5b5f83e6a842a91f3b7561900e56a2867c2d3feeead96d154d4a01cecb"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.1/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1a2a166eedc577ebfd75bf197f0c1ff2f470d23609acf86969bf22e1780eebe"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
