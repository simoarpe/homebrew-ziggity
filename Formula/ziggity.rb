class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.9.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.9.0/ziggity-v0.9.0-aarch64-macos.tar.gz"
      sha256 "3ba9b4070eb57193b97f31cdb358dec5f67332f3bd8b89bdd550f639ab1a7496"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.9.0/ziggity-v0.9.0-x86_64-macos.tar.gz"
      sha256 "519d3dc44befb6c1ac0389dc836ae10509450e94c408edb388843eab2d017299"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.9.0/ziggity-v0.9.0-aarch64-linux-musl.tar.gz"
      sha256 "feec0d98e67b770594b8e97f99a54c8f91f6cba9ecb884a4e0c624c137535077"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.9.0/ziggity-v0.9.0-x86_64-linux-musl.tar.gz"
      sha256 "1b80aa1277a065fb63af928722c743176588616e9d11c90460bddc1b705d14b3"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
