class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.22.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.22.0/ziggity-v0.22.0-aarch64-macos.tar.gz"
      sha256 "5f1815c7d735c7fb024c517187698bb67ddea00051dfd9317875c907a901eced"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.22.0/ziggity-v0.22.0-x86_64-macos.tar.gz"
      sha256 "35824e895dea09ddcf7ca045b08dcec610401a4d38c8c132c21c3ea77668f29f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.22.0/ziggity-v0.22.0-aarch64-linux-musl.tar.gz"
      sha256 "0a355955cc0c52f66e33211a074b08ca856cedb5ddb5c21c847e44c6cd90d65c"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.22.0/ziggity-v0.22.0-x86_64-linux-musl.tar.gz"
      sha256 "d0b2c35c9edee9f0301f1538387033d9ac5e435dc572d6b6dcbec779a82a33a0"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
