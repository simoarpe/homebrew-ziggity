class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.10.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.10.0/ziggity-v0.10.0-aarch64-macos.tar.gz"
      sha256 "54df47f80a060b9828db3843cdf5ff133760166f2dd5b4d058eb19fabfda9aea"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.10.0/ziggity-v0.10.0-x86_64-macos.tar.gz"
      sha256 "a33c9becafc3dd9d074ad7057dea20fda8ff6690556c3b8b8d506d12c941504c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.10.0/ziggity-v0.10.0-aarch64-linux-musl.tar.gz"
      sha256 "0139684025292d70bd5ed2998cc9b41f3773586cb307c8a2dc2c995ca7092a9c"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.10.0/ziggity-v0.10.0-x86_64-linux-musl.tar.gz"
      sha256 "2cf2dc2fb86196c3ee431371e4e94918e1291747ce2846365dce6991af04e971"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
