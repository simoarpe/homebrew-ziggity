class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.56.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.56.0/ziggity-v0.56.0-aarch64-macos.tar.gz"
      sha256 "b24510bdcc2b74f57c1c1442bb87cea08350a5a3762d169030fb2e7c741b26df"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.56.0/ziggity-v0.56.0-x86_64-macos.tar.gz"
      sha256 "8b639566d676e02a2d3b274951b7cc1ac8329acc6c705f06f35c18b00d476837"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.56.0/ziggity-v0.56.0-aarch64-linux-musl.tar.gz"
      sha256 "5e251e4d503e809de34c3e1171d321fe353671e62e8c90f901991cfe9efc2bc7"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.56.0/ziggity-v0.56.0-x86_64-linux-musl.tar.gz"
      sha256 "de5b32dee044677e6b554bf5cc08622eb29138e725b576bab82e05cda343632b"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
