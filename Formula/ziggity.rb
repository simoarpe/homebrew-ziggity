class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.33.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.33.0/ziggity-v0.33.0-aarch64-macos.tar.gz"
      sha256 "d6d59382d23bcb11875a490c8374136175d367bdb4458cee4f057ec3bfe37397"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.33.0/ziggity-v0.33.0-x86_64-macos.tar.gz"
      sha256 "6832be1b909be484372d1d95bc40e234f645df4eb31273592016062eeb7014c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.33.0/ziggity-v0.33.0-aarch64-linux-musl.tar.gz"
      sha256 "8d21005bd77d9152ebf24263c7ee039185c3c3138cd3a1742e0fe663dbce6d49"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.33.0/ziggity-v0.33.0-x86_64-linux-musl.tar.gz"
      sha256 "e79b34d44ca11c024d180eb66d3a7c8aadde2456ccb9b475c5120dd8aac98c93"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
