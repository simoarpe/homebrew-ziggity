class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.60.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.60.0/ziggity-v0.60.0-aarch64-macos.tar.gz"
      sha256 "612e6b3930fb2380af7ffe31c1a61ee01977911644d15326b30047bb2038a601"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.60.0/ziggity-v0.60.0-x86_64-macos.tar.gz"
      sha256 "4485d18d7840928a6b044db6936e16d5914dcfa3de2dbf9994d7aa597d54af20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.60.0/ziggity-v0.60.0-aarch64-linux-musl.tar.gz"
      sha256 "1b01e4f27fd4e27e69f467e7dc135763bf76d201c6dc864459eb962980736b90"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.60.0/ziggity-v0.60.0-x86_64-linux-musl.tar.gz"
      sha256 "b6dad0308f55cfb388f27894b8dd0376adedad3ac5535a7f12b6b4cfffc4e481"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
