class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.28.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.28.0/ziggity-v0.28.0-aarch64-macos.tar.gz"
      sha256 "00103be73eccd3aa48eab25b7f6698e9e6775563d3c604d1cea9bbe85617f797"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.28.0/ziggity-v0.28.0-x86_64-macos.tar.gz"
      sha256 "c6b13af0f44bf59fbf0735d6b034b32a1b36d2f063aba38b2077b5c5f1959d7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.28.0/ziggity-v0.28.0-aarch64-linux-musl.tar.gz"
      sha256 "2409f340f226ed0e58048cf479e41bf4abf7686440d11197f124cee074cbbbdd"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.28.0/ziggity-v0.28.0-x86_64-linux-musl.tar.gz"
      sha256 "44d29e1c4d76e099b09a4ecd4bae65ea9ce1d2c0e7f782b57bba30e0604f0b29"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
