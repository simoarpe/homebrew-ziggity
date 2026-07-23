class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.7.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.7.0/ziggity-v0.7.0-aarch64-macos.tar.gz"
      sha256 "42d3fb93787b9f6bc97fe9f4be04fdfa988d2c0d8ca83cb7cceda298ca86a469"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.7.0/ziggity-v0.7.0-x86_64-macos.tar.gz"
      sha256 "b60cf408f2c4e0a34a4b26f7296db9a466911870a73077285cd0f76511af069f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.7.0/ziggity-v0.7.0-aarch64-linux-musl.tar.gz"
      sha256 "0ee2c88dd75c906129adf70adba84c0a796c78d11f85b99596c0bfd327b9d33a"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.7.0/ziggity-v0.7.0-x86_64-linux-musl.tar.gz"
      sha256 "bf92f7f5377923a1482213b0ecefac7cd0288257146dd0c911f1100d35adbc59"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
