class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.36.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.36.0/ziggity-v0.36.0-aarch64-macos.tar.gz"
      sha256 "709d4433251ccdb01d146e614073d7312f68572d23b8d62f18b181ee4741123d"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.36.0/ziggity-v0.36.0-x86_64-macos.tar.gz"
      sha256 "bd641ea84c90d7587d2cbe9b648d24394d29440ee1353a9ac0158874368d26f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.36.0/ziggity-v0.36.0-aarch64-linux-musl.tar.gz"
      sha256 "4ebb6e79a9a66912577f2030ef4c12b269493ff7e8d7481c2c3f6fef589ccf91"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.36.0/ziggity-v0.36.0-x86_64-linux-musl.tar.gz"
      sha256 "9f7746cab18fef697c78accf1b609d678f6430814d271893e1746c92f1018090"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
