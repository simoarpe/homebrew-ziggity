class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.27.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.27.0/ziggity-v0.27.0-aarch64-macos.tar.gz"
      sha256 "6bb199c36a8d815b694973ccce1dccc64a707682790746203d77cd05f6d4bfaf"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.27.0/ziggity-v0.27.0-x86_64-macos.tar.gz"
      sha256 "ee1eae73f650fa0d55faac83810bd5d037d7b3634707f8c1b3462225f1370248"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.27.0/ziggity-v0.27.0-aarch64-linux-musl.tar.gz"
      sha256 "9d05756e45f71a6260e27110d77e7290607ef06a70a0865b92dd127aa13066f1"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.27.0/ziggity-v0.27.0-x86_64-linux-musl.tar.gz"
      sha256 "d09c9084a61ddd6aea25f846001a9508b938431197dbb27062e0f6d02409a68a"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
