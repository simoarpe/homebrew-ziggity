class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.25.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.25.0/ziggity-v0.25.0-aarch64-macos.tar.gz"
      sha256 "0e1c6d47ecd006ad695e43b6476e105fe8df1f793f33f3918907d8ba3fb8cbd2"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.25.0/ziggity-v0.25.0-x86_64-macos.tar.gz"
      sha256 "78eaffcf0cb5babdcda7bb7305ad63055cca963182ac1c35a8edfc6e2a27ff71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.25.0/ziggity-v0.25.0-aarch64-linux-musl.tar.gz"
      sha256 "48de932214189a48dd395d67a4fb8ddaae3c67047972533b6de63da3f4e0b0bc"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.25.0/ziggity-v0.25.0-x86_64-linux-musl.tar.gz"
      sha256 "18950691968905022ce169f182008550950eac13010d55efb710f1a5ff12c642"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
