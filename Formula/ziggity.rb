class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.5.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.5.0/ziggity-v0.5.0-aarch64-macos.tar.gz"
      sha256 "791fa2f482a34d57b125348cc524cbc8f8f6ff76aa0ff6c52daa70396102c34a"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.5.0/ziggity-v0.5.0-x86_64-macos.tar.gz"
      sha256 "b5c94309e07793ad6d73aba36422226c6428264a72101bc3b81f4a16476908bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.5.0/ziggity-v0.5.0-aarch64-linux-musl.tar.gz"
      sha256 "ccd0d71411b13979e87a7b60819d13e6d80e842187aebfcc31af39bf935ccdf6"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.5.0/ziggity-v0.5.0-x86_64-linux-musl.tar.gz"
      sha256 "09e35efa612af4ce42fed705ab59b1fb3bd08308c623669feb0acf43122616da"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
