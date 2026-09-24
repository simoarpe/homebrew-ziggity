class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.44.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.44.0/ziggity-v0.44.0-aarch64-macos.tar.gz"
      sha256 "7e1c1a739beafefb4ea935bfaac6cd542dd846256f377155844bd9ec2358a67d"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.44.0/ziggity-v0.44.0-x86_64-macos.tar.gz"
      sha256 "270eeea2d30d05334935e86d66b82a8470e398f242c2ace62980c87fc5a8b4c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.44.0/ziggity-v0.44.0-aarch64-linux-musl.tar.gz"
      sha256 "0799385e520c20a8bee7774ca1ada4e987232b58e1950e020b5641486bdd3693"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.44.0/ziggity-v0.44.0-x86_64-linux-musl.tar.gz"
      sha256 "a139d5998d155d9e41f12f1e4266aab266b16c378fa74a319b523bfbc99a0ac3"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
