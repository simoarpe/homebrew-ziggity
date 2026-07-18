class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.2.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.2.0/ziggity-v0.2.0-aarch64-macos.tar.gz"
      sha256 "920bf899c88c6c5c1c1257218a5bbeaf1d8e1b58c8ebff27281472cbc4608cba"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.2.0/ziggity-v0.2.0-x86_64-macos.tar.gz"
      sha256 "ab89f12d1b3f31c2eef37bfb74069d347bdaf7124c4b00b18b68696c58bf50a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.2.0/ziggity-v0.2.0-aarch64-linux-musl.tar.gz"
      sha256 "dd1828364c4e081a0c819714bea7f0a5e310611cb98d6ed1047673f3a1536813"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.2.0/ziggity-v0.2.0-x86_64-linux-musl.tar.gz"
      sha256 "fc08b576e4c820416bd401cb85f610b51e10503246df676b5a7d4d5ce450ad2e"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
