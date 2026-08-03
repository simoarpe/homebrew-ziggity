class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.16.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.16.0/ziggity-v0.16.0-aarch64-macos.tar.gz"
      sha256 "fe4b64b5cdfd73f77a3f4fb194d598f0d3a6f1b4efd4377be03f12b5214c5569"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.16.0/ziggity-v0.16.0-x86_64-macos.tar.gz"
      sha256 "8198448be095b984342e07a9c6aefaf0d3477d8baea777687aa3d9f514de69a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.16.0/ziggity-v0.16.0-aarch64-linux-musl.tar.gz"
      sha256 "41fa127c37e0099cd4585ee75b5bc182bfcc60de3e30088ce6ae29efc4a378a7"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.16.0/ziggity-v0.16.0-x86_64-linux-musl.tar.gz"
      sha256 "09d666b18b4e135b5faa729a5360500968cf06e27e19d154471cb0fda3c1c967"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
