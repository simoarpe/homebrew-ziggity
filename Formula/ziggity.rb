class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.32.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.32.0/ziggity-v0.32.0-aarch64-macos.tar.gz"
      sha256 "16a3b4a8980ca0d32f46ceff638876664abb643f82a966341bc6602e23c180ad"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.32.0/ziggity-v0.32.0-x86_64-macos.tar.gz"
      sha256 "a3160b506d8135f2bcf446651385971273b8c2e42dfbfc1a9c18742a80ca4aed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.32.0/ziggity-v0.32.0-aarch64-linux-musl.tar.gz"
      sha256 "f1449676f0ba9c14bad4a92543166b57eec691d234ce280eaa7a5376e9749776"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.32.0/ziggity-v0.32.0-x86_64-linux-musl.tar.gz"
      sha256 "a95797a53740538629ab4c4c558cd671e0d3a7163e0a659bab4efc7bbdb5e854"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
