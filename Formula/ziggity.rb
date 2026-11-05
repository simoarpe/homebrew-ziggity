class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.58.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.58.0/ziggity-v0.58.0-aarch64-macos.tar.gz"
      sha256 "cfd22984139c6949bfe2a9f3a07348e39ef4f787a88c0fb2d4d770a95a60b711"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.58.0/ziggity-v0.58.0-x86_64-macos.tar.gz"
      sha256 "b4a3d6a2286dab6080865b841b6ae778c08f0e7abe8d0db0978c40f7791a5a01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.58.0/ziggity-v0.58.0-aarch64-linux-musl.tar.gz"
      sha256 "b69dc46763d5cec8a191720d881c2516b68238ead9796ef9fdb51c56335f2492"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.58.0/ziggity-v0.58.0-x86_64-linux-musl.tar.gz"
      sha256 "5ff3b7912b54b1453849037b94d3a281d0c49f6eb0b55c13757aaeab662f7f78"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
