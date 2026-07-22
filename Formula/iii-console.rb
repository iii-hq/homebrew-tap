class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.21.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.8/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "d9796bd1750e143713e3e377678c9df85066b1b6c65c1ab36bb2808fbbad37ab"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.8/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "c7c29a8728bd99bc8efeac9724a7a5a4d2f04e4c00a22766216da179e3b580d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.8/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e02883433fa3a4fe9f7ca8ff4c1ceaaae241433b4a3632f67b448943631f3467"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.8/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3192775bb34f001671a023028c1eae6c9fb33e535307fde64b671d6cd16faa11"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
