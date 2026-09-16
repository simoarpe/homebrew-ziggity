class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.40.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.40.0/ziggity-v0.40.0-aarch64-macos.tar.gz"
      sha256 "a4572122b300d90dfa2503c102402eb1607abd6e9e591ad2375582f41b0be983"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.40.0/ziggity-v0.40.0-x86_64-macos.tar.gz"
      sha256 "3d0bf2a5a787191bb363a0576cbc0ecf51a066fa3ad6bba130b410e0df68d83d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.40.0/ziggity-v0.40.0-aarch64-linux-musl.tar.gz"
      sha256 "9328173b168ffb21158e0e5941b7970a97a29d5459f50241be3dd215739f8ffa"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.40.0/ziggity-v0.40.0-x86_64-linux-musl.tar.gz"
      sha256 "419fbc0b8095fab48d10eefea0306a5ef0766a22be6b6b59abb7e468395649ff"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
