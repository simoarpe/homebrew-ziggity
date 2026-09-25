class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.46.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.46.0/ziggity-v0.46.0-aarch64-macos.tar.gz"
      sha256 "a941b12e3c6277937edd00347a03be1db28d1f84e184ce5b96993e868e715032"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.46.0/ziggity-v0.46.0-x86_64-macos.tar.gz"
      sha256 "413b5a3212c80a3829f643c8570ac7101917f7f1e0db079f263787284ba5fdfa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.46.0/ziggity-v0.46.0-aarch64-linux-musl.tar.gz"
      sha256 "f2c9c400aacc8fa1caa7c70cc54df2c3da22dae89aed2caeb2fbd157bd80bc8f"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.46.0/ziggity-v0.46.0-x86_64-linux-musl.tar.gz"
      sha256 "840b17c2f7c6616934a655751634b43474a3312caad60b231eff13c07357e3c0"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
