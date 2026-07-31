class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.14.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.14.0/ziggity-v0.14.0-aarch64-macos.tar.gz"
      sha256 "7e35f7e2875e12bf5a295de04b85953fd8881016cac51f3e8f9435016c6c1b0b"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.14.0/ziggity-v0.14.0-x86_64-macos.tar.gz"
      sha256 "1234ae70504fcc3257739ff114d854214da1cb8a95191da2ff820c64ff7a0a45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.14.0/ziggity-v0.14.0-aarch64-linux-musl.tar.gz"
      sha256 "eecc77286e3cc33616da7f90d68d4924be3ca2043de805be0ca5b3d2cae822d5"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.14.0/ziggity-v0.14.0-x86_64-linux-musl.tar.gz"
      sha256 "f9bd7fc9f9bebb94c54f29a48f3718ee9d87981664b18b54382ed49be536c784"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
