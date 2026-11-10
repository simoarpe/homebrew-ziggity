class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.61.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.61.0/ziggity-v0.61.0-aarch64-macos.tar.gz"
      sha256 "4f9507080621a4c23168c34056b1140e88a9d5189d147964f7a0d7f23c788b45"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.61.0/ziggity-v0.61.0-x86_64-macos.tar.gz"
      sha256 "04551f38d712707a1725ad315ff579360c38ca5f33c3f3766c51531c668d4ebf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.61.0/ziggity-v0.61.0-aarch64-linux-musl.tar.gz"
      sha256 "6d8f9fe85b8da6e71747ada0b68bebc68e7211fec8ff23d274c5abe6346bbf58"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.61.0/ziggity-v0.61.0-x86_64-linux-musl.tar.gz"
      sha256 "67fdfad7f04c375314680448bccb19f653b2aa20ea4aaf0b624f100b36e292a3"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
