class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.31.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.31.0/ziggity-v0.31.0-aarch64-macos.tar.gz"
      sha256 "0cf5368d46fcd0ef3988a20f5896b2a9c00ad156ce510c8e0c3a5179eb1b78cc"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.31.0/ziggity-v0.31.0-x86_64-macos.tar.gz"
      sha256 "055fe3ada559d8af85d169fcdc2a3fa4ed90c12741a70638425755b91c7c68cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.31.0/ziggity-v0.31.0-aarch64-linux-musl.tar.gz"
      sha256 "94a0dadc78268a8dc2c8f01d0b659970c4753cb787f492185a26a408e6e8b260"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.31.0/ziggity-v0.31.0-x86_64-linux-musl.tar.gz"
      sha256 "84839f6ebc6fefe71dfe60a41601f8da44c65cf5696ddf7ae19b8fa1e8ec206c"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
