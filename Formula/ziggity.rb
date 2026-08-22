class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.23.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.23.0/ziggity-v0.23.0-aarch64-macos.tar.gz"
      sha256 "306c32aa96f42ee0a8b7a31d24ab46db0f3fce05dc65f0dbfd4f0942a6e37809"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.23.0/ziggity-v0.23.0-x86_64-macos.tar.gz"
      sha256 "0f3aa86555f1307f4405b19a42232ae79812573b8924d34f17a94a9cf5870e35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.23.0/ziggity-v0.23.0-aarch64-linux-musl.tar.gz"
      sha256 "834b3d212f3c2b982165bc6fc70a9e1c11208359908b4410f3bb49734a59ac19"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.23.0/ziggity-v0.23.0-x86_64-linux-musl.tar.gz"
      sha256 "5531ef291c424263b3b00137ee9c112b1be2c1c448902cff6bb2293c6de243c9"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
