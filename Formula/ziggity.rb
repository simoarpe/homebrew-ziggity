class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.38.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.38.0/ziggity-v0.38.0-aarch64-macos.tar.gz"
      sha256 "dca834b83d1396fb0e79d2917a879f00f367b44b10b449c40cc56574bdeaacd0"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.38.0/ziggity-v0.38.0-x86_64-macos.tar.gz"
      sha256 "a5793aaf7388a0da67b140bb450aa0044ec16c27c3c9bb288c885c917ce19843"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.38.0/ziggity-v0.38.0-aarch64-linux-musl.tar.gz"
      sha256 "290c70c10abe2d74f41e334ce0cec211a0e0f42e54017bc470243847b22a1364"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.38.0/ziggity-v0.38.0-x86_64-linux-musl.tar.gz"
      sha256 "623ba0c6071995f511e09370962933ef34691bd9d0128160608a119d7c629ca6"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
