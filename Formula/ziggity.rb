class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.20.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.20.0/ziggity-v0.20.0-aarch64-macos.tar.gz"
      sha256 "e62670ae5f359fbc7e32097d4e13b8e8dd0fc6927f2f7d08b583399b8cf7f485"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.20.0/ziggity-v0.20.0-x86_64-macos.tar.gz"
      sha256 "971a0a907a16eab5c99f39f953c74de7c1de590802acaa136c06a47d58f6846b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.20.0/ziggity-v0.20.0-aarch64-linux-musl.tar.gz"
      sha256 "a9a2b6321bef5d617650ef403f8d72d74422ae2c7263942e65dcc06fd7966123"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.20.0/ziggity-v0.20.0-x86_64-linux-musl.tar.gz"
      sha256 "b18cfee87c9b60f8f490d5522206db7148f59d49ebaf72705de76986718aba3b"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
