class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.45.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.45.0/ziggity-v0.45.0-aarch64-macos.tar.gz"
      sha256 "84fbdf34152ca84611a6c855dca2ad1e46304c51f9abf0b99c9501ea3f0d4bd5"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.45.0/ziggity-v0.45.0-x86_64-macos.tar.gz"
      sha256 "4157f831eeb1459d807695c8a001b332ce415b1db85a1325d25c1c13d7305cf8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.45.0/ziggity-v0.45.0-aarch64-linux-musl.tar.gz"
      sha256 "3e6c3ff6a12a86f3001f6b9923c129115520600ffea180d3941f5b7eba27b540"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.45.0/ziggity-v0.45.0-x86_64-linux-musl.tar.gz"
      sha256 "61514eb9c7c8ea9aef32b39a52e2b212a1cdf4ff14ec6e59414abccf07fbbace"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
