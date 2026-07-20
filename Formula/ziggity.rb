class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.3.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.3.0/ziggity-v0.3.0-aarch64-macos.tar.gz"
      sha256 "cf4bc4a4cba864bfcd7d28c158b6ff4a528dbaaa0db8d14ebb7d6a2a071d21ac"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.3.0/ziggity-v0.3.0-x86_64-macos.tar.gz"
      sha256 "c73aa2526d8c25270b2b5e4c2ee71883e5711408dc5619504e9beb9bf1e7f254"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.3.0/ziggity-v0.3.0-aarch64-linux-musl.tar.gz"
      sha256 "0961f02c58cd1795e02198e8636c7e4d30b15d96a7f29f9b76694dec24e3af3d"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.3.0/ziggity-v0.3.0-x86_64-linux-musl.tar.gz"
      sha256 "6b4f53a883b77db4b3256ad36e5d253e5da785e48d18dfb48fd7a24376a47d4a"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
