class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.47.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.47.0/ziggity-v0.47.0-aarch64-macos.tar.gz"
      sha256 "541327fed38155c63c4cc2d00ff07e53f72bf5e2afb591f813b379b2851a3f3d"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.47.0/ziggity-v0.47.0-x86_64-macos.tar.gz"
      sha256 "1d42166e6d81774b4b1fe40434c9c910e79e00ea49595b006b6aa0e1295a2879"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.47.0/ziggity-v0.47.0-aarch64-linux-musl.tar.gz"
      sha256 "e7385d91608e00568138b2a9170e8e119ea3d6c0ed85789e0f205928fb012c9d"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.47.0/ziggity-v0.47.0-x86_64-linux-musl.tar.gz"
      sha256 "46b1f08c34d9b7b8819940470c3a020bdfc3a29ef882e701352e634b5bf88486"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
