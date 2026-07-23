class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.8.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.8.0/ziggity-v0.8.0-aarch64-macos.tar.gz"
      sha256 "a44e8655abe41ebca0422c8ebaf787a57dec1c5e4e2f9a19b983db5ec0617af5"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.8.0/ziggity-v0.8.0-x86_64-macos.tar.gz"
      sha256 "a322f56bfbb3532a3ff5da2b0bccd039b995d97ad3769a060a1087ae6dbd4ab6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.8.0/ziggity-v0.8.0-aarch64-linux-musl.tar.gz"
      sha256 "579a3fffe2c4e2c59c87b9f2082fcd9b5837c6c230cdec0a5404bc57d82a0ab0"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.8.0/ziggity-v0.8.0-x86_64-linux-musl.tar.gz"
      sha256 "b60d8473cfaf70fe70295ceda0b4c475498a922344c81cd10987ae52d2efa148"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
