class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/v0.4.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "2604f98cd76f377a9a253b7649829aa6246fc74dbc5550231d900db42598fc6a"
    else
      url "https://github.com/iii-hq/iii/releases/download/v0.4.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "1ee7e632a273aad0006da7dc75747b42faf99a51427a1cc49a0cf269a06e55ff"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iii --version")
  end
end
