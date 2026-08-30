class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.37.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.37.0/ziggity-v0.37.0-aarch64-macos.tar.gz"
      sha256 "3ddc801afe375a733727469d1458350f08f968f71809bc8f6a0aac0b2b1d7014"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.37.0/ziggity-v0.37.0-x86_64-macos.tar.gz"
      sha256 "fb6d10cf6e24c08ec7e6df46f5a61d59d7c081df7ad0dc2d86afd62053baaa15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.37.0/ziggity-v0.37.0-aarch64-linux-musl.tar.gz"
      sha256 "c9b9f11c292898323a8d503e6aa7790120a565d1a93a2a7794c8de99e7ddbe32"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.37.0/ziggity-v0.37.0-x86_64-linux-musl.tar.gz"
      sha256 "3fefbcb75c068a50c8453a52f8293c26e261726036aaeb12a92e6045d0a44100"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
