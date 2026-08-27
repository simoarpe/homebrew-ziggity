class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.29.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.29.0/ziggity-v0.29.0-aarch64-macos.tar.gz"
      sha256 "efab72e6d2abb9b965bd284d3387872500fc7c5f2c41ef82c40a45df8dc00b07"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.29.0/ziggity-v0.29.0-x86_64-macos.tar.gz"
      sha256 "b02630fd991ca9699093673054309578194877ad25beb8d536a5d3ca9c068270"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.29.0/ziggity-v0.29.0-aarch64-linux-musl.tar.gz"
      sha256 "db3f992ec778708b5f5ce5e8b16c79a731145dfd464f2aed130362d5cb1d157f"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.29.0/ziggity-v0.29.0-x86_64-linux-musl.tar.gz"
      sha256 "2fe05199e5902ca83458a870edad8895274b291495db3d6ba2a2017e4a01acaf"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
