class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.35.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.35.0/ziggity-v0.35.0-aarch64-macos.tar.gz"
      sha256 "6c9bc89a017160ece1f8fc53139e171a2837b0f6df9649a179b3c793aa8a55dc"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.35.0/ziggity-v0.35.0-x86_64-macos.tar.gz"
      sha256 "c294af643dd4be6a1d2dc5ceb4619751694cc2358c6ffc5dd0f19740704444da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.35.0/ziggity-v0.35.0-aarch64-linux-musl.tar.gz"
      sha256 "0cd3a3733ea0fedffdb09d6451c7369bf952400444850a5b6d5ce7787f6c9685"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.35.0/ziggity-v0.35.0-x86_64-linux-musl.tar.gz"
      sha256 "b6562f777a220b98c73905c9a87f5676014e1ea12b496287b5bbe324b9e908ff"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
