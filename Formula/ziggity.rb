class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.26.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.26.0/ziggity-v0.26.0-aarch64-macos.tar.gz"
      sha256 "e4519c663edf11a8fba42127656d006e8ba92563331d937108fceeb823488cd5"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.26.0/ziggity-v0.26.0-x86_64-macos.tar.gz"
      sha256 "6afdbe182686c63afa5afb608453f1e38d2756b2f952987b13e0c586245441fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.26.0/ziggity-v0.26.0-aarch64-linux-musl.tar.gz"
      sha256 "6b76fec68ec73d6b5f46cc18e48a387980f0845b7436eb6678c7951c1c72ae31"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.26.0/ziggity-v0.26.0-x86_64-linux-musl.tar.gz"
      sha256 "b2f027f687555d61b631734fd4ffe308020693f6590b2841b2544ce46e65f838"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
