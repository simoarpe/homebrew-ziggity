class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.39.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.39.0/ziggity-v0.39.0-aarch64-macos.tar.gz"
      sha256 "68605ce92e43b3903d6d6bf7cc5cf3c2fa092b96359aa3a4a7219d99d6a2c67b"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.39.0/ziggity-v0.39.0-x86_64-macos.tar.gz"
      sha256 "d5b0eaec9a47f4257169c5f0976415f9ed79669cdee172f2aa3bc3c970c1ef5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.39.0/ziggity-v0.39.0-aarch64-linux-musl.tar.gz"
      sha256 "7c10d2b6e7afca689988b961b1e772ce14c4cbc16efe30650fe42e248150caf8"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.39.0/ziggity-v0.39.0-x86_64-linux-musl.tar.gz"
      sha256 "08f35eaf1bf42479c178923fff13247b4566aa3a5ecfdc69510ec7000f7a502b"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
