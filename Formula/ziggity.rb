class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.15.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.15.0/ziggity-v0.15.0-aarch64-macos.tar.gz"
      sha256 "df40b9523445ab28de3adecc85827e3bd878a353734ebeb7cb085bb4c8471ce9"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.15.0/ziggity-v0.15.0-x86_64-macos.tar.gz"
      sha256 "dc61df2abb4465c0867c174434cfbb2bed6cefdeea30d2624e10efe1ef16a419"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.15.0/ziggity-v0.15.0-aarch64-linux-musl.tar.gz"
      sha256 "24c855a62667d9f741df45d6e28292aeb1c5bd1fe420d890b1b4803c5c4a3a82"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.15.0/ziggity-v0.15.0-x86_64-linux-musl.tar.gz"
      sha256 "714ba038d2e64d761ab28a9744667a5974e06d3977b918ba894c7653b2e9cc6d"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
