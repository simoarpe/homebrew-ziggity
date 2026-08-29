class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.34.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.34.0/ziggity-v0.34.0-aarch64-macos.tar.gz"
      sha256 "630445319992b0eb70e18271712d80995b0779dbfbfd4a5aadcf4ab101d2f5ee"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.34.0/ziggity-v0.34.0-x86_64-macos.tar.gz"
      sha256 "e5b0f54461cb37525b2cb834e1b718cbd3617579bef8cc77e64034dba47f09e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.34.0/ziggity-v0.34.0-aarch64-linux-musl.tar.gz"
      sha256 "4b9c92f1dc3c67664bf33fccdebbcb353a36081466bff2a7ea0bf3fdcaedfd20"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.34.0/ziggity-v0.34.0-x86_64-linux-musl.tar.gz"
      sha256 "2ce2cb2c8b9f274ee580af25fdaa017014d691d37de6135ca5fe9e7634a98635"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
