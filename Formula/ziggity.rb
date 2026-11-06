class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.59.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.59.0/ziggity-v0.59.0-aarch64-macos.tar.gz"
      sha256 "e7dede2b4618c76069e09c0b351ef433874d02b7b20d481c18233c97230e4881"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.59.0/ziggity-v0.59.0-x86_64-macos.tar.gz"
      sha256 "79b1ff58d53089ddf2a37e1431d7eb401825963fd0a936ce4a5c2e9a01978ddd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.59.0/ziggity-v0.59.0-aarch64-linux-musl.tar.gz"
      sha256 "4dddb29e4a9f3f45251069be76c955a48225ad2232dbd45a043c425ea9f2d084"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.59.0/ziggity-v0.59.0-x86_64-linux-musl.tar.gz"
      sha256 "f26a519227eeae3516f0b2c09318c025bdc063064c84e06626ace9b6c192ebbc"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
