class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.4.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.4.0/ziggity-v0.4.0-aarch64-macos.tar.gz"
      sha256 "80f5a3fb23d34de5e2e6435d8d08b488f455515f6cdc0b17dd3cc3fac0511fb0"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.4.0/ziggity-v0.4.0-x86_64-macos.tar.gz"
      sha256 "eb0e6fd6749e3586f60716e19a72b2a9e769193d18faf0ea3716245384dea633"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.4.0/ziggity-v0.4.0-aarch64-linux-musl.tar.gz"
      sha256 "ec096467e3d31a27e5fc8c10001ae58d5bbaa200a68c757c4bcedc49b2b4a53a"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.4.0/ziggity-v0.4.0-x86_64-linux-musl.tar.gz"
      sha256 "4fc64c6ccacdc6f4e90674c12b9ce68fd12f8732c37f2ef05fa8f93987268596"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
