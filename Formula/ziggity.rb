class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.55.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.55.0/ziggity-v0.55.0-aarch64-macos.tar.gz"
      sha256 "91da680dae4751affcb674b2811a7c2d45d224c579f5a69613a7883cc17d9299"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.55.0/ziggity-v0.55.0-x86_64-macos.tar.gz"
      sha256 "a4b94ef70e8b829d9970a27abf1fbc8c392584b7b803777f63283c1d3060dee2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.55.0/ziggity-v0.55.0-aarch64-linux-musl.tar.gz"
      sha256 "632b1fde24451e8c4fcac33529792678392d636f4290dafdde97c75baad37b66"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.55.0/ziggity-v0.55.0-x86_64-linux-musl.tar.gz"
      sha256 "3c5ad2c6630d50e1225b7a9cd3356c8c8dc0e9c345b931fe8ea06bb2a9ac99db"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
