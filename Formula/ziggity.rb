class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.57.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.57.0/ziggity-v0.57.0-aarch64-macos.tar.gz"
      sha256 "311bbb5cc9ed7573d3f5265c27fde0c3630a8bfc31f9b582e6cdd904a9072295"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.57.0/ziggity-v0.57.0-x86_64-macos.tar.gz"
      sha256 "ecea690d03b85a8f9bc57938d470e9168e8f74176a9adff2e07b7ce8c1e67e77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.57.0/ziggity-v0.57.0-aarch64-linux-musl.tar.gz"
      sha256 "4e5b9c27a5ce64ac0540a75faf4f74186055cb8092b6517d300202eee95385a8"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.57.0/ziggity-v0.57.0-x86_64-linux-musl.tar.gz"
      sha256 "92fc6ffc2bec442c03a8e998b7d7d8d0b73b1ddff0a6da3a3f4c39a1d09f6cc4"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
