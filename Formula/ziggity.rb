class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.48.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.48.0/ziggity-v0.48.0-aarch64-macos.tar.gz"
      sha256 "46ee4944aee154f24facc3164afea1d461429e9de5d733fc038d39d9b3291998"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.48.0/ziggity-v0.48.0-x86_64-macos.tar.gz"
      sha256 "353e75f5a04726d9a7f1b99743fd464c502e8d3bd9af793a5228b87765cda40f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.48.0/ziggity-v0.48.0-aarch64-linux-musl.tar.gz"
      sha256 "a77d87af73b9ff30a575f91b76c239bd325b6b3e5a95d2530c31284c93f2d26a"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.48.0/ziggity-v0.48.0-x86_64-linux-musl.tar.gz"
      sha256 "98995e5f4e85eb8b0dea51d4beb3477882b282d5a558768a116503e7bd60747d"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
