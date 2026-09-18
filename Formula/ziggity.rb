class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.43.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.43.0/ziggity-v0.43.0-aarch64-macos.tar.gz"
      sha256 "1c5dc9b46d7bcaaf4e4610374f5e3d8ec62346c7e08e3696709e3f7bfa71e101"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.43.0/ziggity-v0.43.0-x86_64-macos.tar.gz"
      sha256 "ef535214d049e905354bed9633b46d4f4ee66a08f792c01441824e2109d9a971"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.43.0/ziggity-v0.43.0-aarch64-linux-musl.tar.gz"
      sha256 "fae44529fe56b74a13f519f2c875cc735f344aa5325355ae70482b04ecd252a6"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.43.0/ziggity-v0.43.0-x86_64-linux-musl.tar.gz"
      sha256 "8074caeb0d4e44ea5e0991168dcd3327ede2cf183ce5191e32eedb89e01cd35f"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
