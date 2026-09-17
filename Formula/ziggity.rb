class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.41.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.41.0/ziggity-v0.41.0-aarch64-macos.tar.gz"
      sha256 "d4ebcefb080513c54e484dd9f573a8aa9665c567f824348128d46b8e326a7100"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.41.0/ziggity-v0.41.0-x86_64-macos.tar.gz"
      sha256 "65e6a98301c486d9e244aaee5f21fd1fc91c2740caee618d7b59bd387578d52f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.41.0/ziggity-v0.41.0-aarch64-linux-musl.tar.gz"
      sha256 "ec505ea7442e91a93181ce7213a8dec14c8cb121233395e5a0c8fc9c003ec1c3"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.41.0/ziggity-v0.41.0-x86_64-linux-musl.tar.gz"
      sha256 "346d7e90e98b48112723c0d608dfbc114abc51eccb2f69f9bd6182baa8e92c69"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
