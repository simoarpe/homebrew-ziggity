class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.12.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.12.0/ziggity-v0.12.0-aarch64-macos.tar.gz"
      sha256 "b03cb5b1c9e7bdd320f37bd7295f3c927c8049dbf51a312cd1b67d1c59204ac6"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.12.0/ziggity-v0.12.0-x86_64-macos.tar.gz"
      sha256 "341d972ae9394528f0c62baadb78eff30f8262eeb774843702d0a2c1a20423b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.12.0/ziggity-v0.12.0-aarch64-linux-musl.tar.gz"
      sha256 "7956219dc4a648c92ec7361ad30eef9c990c38c96476de8217a3790018fa19cc"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.12.0/ziggity-v0.12.0-x86_64-linux-musl.tar.gz"
      sha256 "8f486a085ffad229b4a93efbf676de2bd3724788fc17285507a7cc8209ee818e"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
