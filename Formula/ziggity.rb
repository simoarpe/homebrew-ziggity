class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.54.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.54.0/ziggity-v0.54.0-aarch64-macos.tar.gz"
      sha256 "11759037edfb1a913902f03d259213ddbe8ef0f9d18736073dee6e5bd43e5e88"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.54.0/ziggity-v0.54.0-x86_64-macos.tar.gz"
      sha256 "a22b66b741e578c09987d6ad05e89b080ba38ef0dbc525bb9e437ad08dc7cda1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.54.0/ziggity-v0.54.0-aarch64-linux-musl.tar.gz"
      sha256 "8a35cf97becc3bf9d10d43990590dd047c14435d37f5986136d5595d0052a9c1"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.54.0/ziggity-v0.54.0-x86_64-linux-musl.tar.gz"
      sha256 "2387eb879f5119023b6e545dda1ff1346180bbe03e8aec87986699a78c1b6068"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
