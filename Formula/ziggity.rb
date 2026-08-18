class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.19.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.19.0/ziggity-v0.19.0-aarch64-macos.tar.gz"
      sha256 "0af961b582a64b816762b93f66a57619ea1821d388a3ecba90761a7fe041c1df"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.19.0/ziggity-v0.19.0-x86_64-macos.tar.gz"
      sha256 "9a5a39da0d4968a1b6113f7c5d2ea6e019a57764ac7d4f67e1b8f20cda57f9ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.19.0/ziggity-v0.19.0-aarch64-linux-musl.tar.gz"
      sha256 "f0b06e7b6b897c8b67da7ce17426fdab423f96e81d62ad05c5a43ba25b5f8c2a"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.19.0/ziggity-v0.19.0-x86_64-linux-musl.tar.gz"
      sha256 "082c16b64f882de226d38149be584ccff28c41e48a6ffac10e992610c305e22b"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
