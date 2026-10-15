class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.51.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.51.0/ziggity-v0.51.0-aarch64-macos.tar.gz"
      sha256 "732f5ba2215c421da3bd26e956e3a2d55445d37008862dfbed3bb1a029527a18"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.51.0/ziggity-v0.51.0-x86_64-macos.tar.gz"
      sha256 "f94be76ba11489972735cf56878cae2bddbe2e201cb27bbe98944b9b5d776e7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.51.0/ziggity-v0.51.0-aarch64-linux-musl.tar.gz"
      sha256 "5e93300ac18a5bb74b3540f7250b38319f3acf41fce4babffdbccd0c81e1fd6d"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.51.0/ziggity-v0.51.0-x86_64-linux-musl.tar.gz"
      sha256 "26d67318f60443ec253f4c6605fc7d07d31b0c2b36b90956787742087aad28e8"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
