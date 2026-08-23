class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.24.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.24.0/ziggity-v0.24.0-aarch64-macos.tar.gz"
      sha256 "df3ddd9ebfa2f111758ddf7e0611602f53a0ae16df3b1f7c381d766b3d869abe"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.24.0/ziggity-v0.24.0-x86_64-macos.tar.gz"
      sha256 "bd7c6e3b97aa4c3cbef9638d6bb57cd915c48ab4180d2c4f890ef3fe7f63701d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.24.0/ziggity-v0.24.0-aarch64-linux-musl.tar.gz"
      sha256 "10663f44e8c695ff354da821ced1cbe33a437d2dff7af9ac8f1d49beb9dab967"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.24.0/ziggity-v0.24.0-x86_64-linux-musl.tar.gz"
      sha256 "9e6b816d2d7f13146514e06970d9fa26560fe8a7da7ecaa1d1e7a192517d3d01"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
