class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.17.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.17.0/ziggity-v0.17.0-aarch64-macos.tar.gz"
      sha256 "a31952b37a3bfa94c459ff092c6ddf511e9ecbee19299e67112969b8c31fe857"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.17.0/ziggity-v0.17.0-x86_64-macos.tar.gz"
      sha256 "76d97d3e843e602bb3a6484f2bdcebafca6c57b6c89eb5a916368ea99b3bcf16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.17.0/ziggity-v0.17.0-aarch64-linux-musl.tar.gz"
      sha256 "7a286e521a9651ea2ee257053b60dfe68063db767ce9102bf1b916f5e1e5ccae"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.17.0/ziggity-v0.17.0-x86_64-linux-musl.tar.gz"
      sha256 "a2763700de7d79236bb4065657be4e5e5c3d1adc19f57a531030b33ae8292db9"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
