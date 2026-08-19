class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.21.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.21.0/ziggity-v0.21.0-aarch64-macos.tar.gz"
      sha256 "a1d0040468248a4e5091864508bf7b15ea7a924455fd890358b7494b463e09fe"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.21.0/ziggity-v0.21.0-x86_64-macos.tar.gz"
      sha256 "413329733551f00fd0f47631bf5d10b24b9bb323e002c408886c0fcf0d42c4c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.21.0/ziggity-v0.21.0-aarch64-linux-musl.tar.gz"
      sha256 "36c29c2b28949199eb81e288a7d22db447bf1ae64f5d77c3cef8df68d297ad49"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.21.0/ziggity-v0.21.0-x86_64-linux-musl.tar.gz"
      sha256 "5f8fd1404720508c6bc402afcc758621e0d612a70acfd8872ddd6c558cfe964a"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
