class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/v0.5.1/iii-aarch64-apple-darwin.tar.gz"
      sha256 "dcd701fd826b4d1b3415a0c04443e39c90f39847880460d3f93484580743544e"
    else
      url "https://github.com/iii-hq/iii/releases/download/v0.5.1/iii-x86_64-apple-darwin.tar.gz"
      sha256 "af5ab940caa946bf71d3d49e10fe6c275058fdc40ffb2ae127449531f261aed0"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iii --version")
  end
end
