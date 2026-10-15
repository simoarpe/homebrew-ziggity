class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.52.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.52.0/ziggity-v0.52.0-aarch64-macos.tar.gz"
      sha256 "179b8a9c7b8d2a4bc9d0598a41dd3741628f2e943b333ce84aa889b786b9b384"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.52.0/ziggity-v0.52.0-x86_64-macos.tar.gz"
      sha256 "a828495c24f9fb830fbe3b4310f9d71f22a91369dedd96c1b14b1bc1e59a80cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.52.0/ziggity-v0.52.0-aarch64-linux-musl.tar.gz"
      sha256 "9dcee77ad3adbfb31962dd6207b0cb868bf6928a74f4073cec99d46ec90284d2"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.52.0/ziggity-v0.52.0-x86_64-linux-musl.tar.gz"
      sha256 "2327b5833b1700d9bd0c64aee7edaf825fe4d8990050f4882bacff50fa605994"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
