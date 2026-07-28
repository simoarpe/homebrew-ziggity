class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.13.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.13.0/ziggity-v0.13.0-aarch64-macos.tar.gz"
      sha256 "116e62caadda35f1064be4457e06e680237e353447cd6fdcac52f790362b8aac"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.13.0/ziggity-v0.13.0-x86_64-macos.tar.gz"
      sha256 "0a6f8867acbb5e864f71f62cb1546f3fa3d94a76d687018ed1f948f7ac3db9ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.13.0/ziggity-v0.13.0-aarch64-linux-musl.tar.gz"
      sha256 "ffabc9f01379d3726c31fc5c292d071c9cc50a6b97a2224f56bec08f0fbcfb53"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.13.0/ziggity-v0.13.0-x86_64-linux-musl.tar.gz"
      sha256 "2385b4d9a4ad3fceaf64b1af5eadb045c8689851e78d85c5d88f3916f71ee8ed"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
