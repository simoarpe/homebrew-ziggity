class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.50.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.50.0/ziggity-v0.50.0-aarch64-macos.tar.gz"
      sha256 "8c0caec1f51b42387499f2926235ef398d994ab7773e31a7cb8630d9fd6a5b53"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.50.0/ziggity-v0.50.0-x86_64-macos.tar.gz"
      sha256 "82dc844784453a7f68ba63bd1239d0efa91395116ff5ab0da7a4f458de26004c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.50.0/ziggity-v0.50.0-aarch64-linux-musl.tar.gz"
      sha256 "926704ef67e3a31f006c4ddd1ed1e5f9ab1dc2bbe25e283e17608b1c2d9f4cc0"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.50.0/ziggity-v0.50.0-x86_64-linux-musl.tar.gz"
      sha256 "f9625f229a0b38c938e570e38589ff96c3731b2048f9434304f20e58e4040f4f"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
