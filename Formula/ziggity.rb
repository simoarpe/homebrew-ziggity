class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.6.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.6.0/ziggity-v0.6.0-aarch64-macos.tar.gz"
      sha256 "f7693683f50231bd05dc207ff51776818526d0f0b6eb1a728dba776ba16b84f7"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.6.0/ziggity-v0.6.0-x86_64-macos.tar.gz"
      sha256 "7854c3c582e53375c78d6827a334c166a6aec4a06e96bec7595138161b3301ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.6.0/ziggity-v0.6.0-aarch64-linux-musl.tar.gz"
      sha256 "6ac2038ad21f0aecfb37c2169036f2d06092d34fa0ccaa3fe560942f3b90f6cf"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.6.0/ziggity-v0.6.0-x86_64-linux-musl.tar.gz"
      sha256 "28d10dd65a2667c0ca1fcad52e47d2bf298b27c20c0607466181f611a440eaeb"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
