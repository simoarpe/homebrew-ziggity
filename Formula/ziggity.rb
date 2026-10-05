class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.49.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.49.0/ziggity-v0.49.0-aarch64-macos.tar.gz"
      sha256 "5ad6f1fba3e19967a20103af096c2b8be39f4042c6e74147360580f3800b91fa"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.49.0/ziggity-v0.49.0-x86_64-macos.tar.gz"
      sha256 "2c8d744dc9e0a7a93ac42217c07a14cecc4e2d7ca9cc5089b5cbff5c78117d61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.49.0/ziggity-v0.49.0-aarch64-linux-musl.tar.gz"
      sha256 "438b5289ce3aa38815586ae0b25d06b550f8d5181e836bdabca821d324809f51"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.49.0/ziggity-v0.49.0-x86_64-linux-musl.tar.gz"
      sha256 "9fea748c470571c14914bcce1e46b6cc6d193b479e9d5e0752f7378550d74846"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
