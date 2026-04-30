class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.11.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.5/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "db064eff1177414d6ceeb8f79b36f43f734067e67cecbf40a89b7318133ed766"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.5/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "534f13db52cf8929fb21d7933c0c0075625448ca513316c80f51df3bf105ebbd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.5/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2e9a84b35dc977d5c7e14f94734330e998de55d804942b0c6ea210057ce4d57b"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.5/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "66c8b1d006bb1f2296e8c544dec7dd7d2fd0d48f657bf4dd06f4fc87749bb3f6"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
