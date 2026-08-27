class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.30.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.30.0/ziggity-v0.30.0-aarch64-macos.tar.gz"
      sha256 "e3467ba9899e135e1bc61290ea0ddded97bb82475697f0e01867a7ac01ebd7cf"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.30.0/ziggity-v0.30.0-x86_64-macos.tar.gz"
      sha256 "75d0ad00e50d3457545295833e8eaa3fedd5a4a28a955c5064362133fdab1903"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.30.0/ziggity-v0.30.0-aarch64-linux-musl.tar.gz"
      sha256 "41773ed8f420a11cb255ad79c173a696b3f4005fe44f62520828680843ac7389"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.30.0/ziggity-v0.30.0-x86_64-linux-musl.tar.gz"
      sha256 "6bb9525911918d1d09f5abb2c3b83b0c3f23eff2089dd200547bf6ef68718b86"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
