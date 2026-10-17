class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.53.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.53.0/ziggity-v0.53.0-aarch64-macos.tar.gz"
      sha256 "fe66aaae7be59b09c194d8018811d573a39102b9c2211a803ad0318b371fb649"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.53.0/ziggity-v0.53.0-x86_64-macos.tar.gz"
      sha256 "568d39e3e5cf874e87816fa8338e1f01b63c5d328e8aaf42db3e27c2b05ed20c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.53.0/ziggity-v0.53.0-aarch64-linux-musl.tar.gz"
      sha256 "5e90958d5ff0232f19bc63eff0060688d08667b929f2921da8436220b45bb579"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.53.0/ziggity-v0.53.0-x86_64-linux-musl.tar.gz"
      sha256 "19a2a2cc35892d580444320b12ff009f0433c96eba6286a9e6f0eb97d5119863"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
