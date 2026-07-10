class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.1.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.1.0/ziggity-v0.1.0-aarch64-macos.tar.gz"
      sha256 "4b2e56182f9f26e1bdba330932ac78622cc02a52d2951ceaf4f4e8521e148b16"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.1.0/ziggity-v0.1.0-x86_64-macos.tar.gz"
      sha256 "588a369e47859819d27b4f4c6a8b59f4ebd33fbabb8cb8384d5e70eed2221a00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.1.0/ziggity-v0.1.0-aarch64-linux-musl.tar.gz"
      sha256 "00a9c5ecd433beb92ec1042fb9999015c2c61133348a07977f5f8a613dfc924b"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.1.0/ziggity-v0.1.0-x86_64-linux-musl.tar.gz"
      sha256 "d719e0863f866d967e1800a074b47e19c46c77abc30f42778dffccce933f2411"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    # Ziggity is an interactive TUI with no --version/--help flag yet, so the
    # test just confirms the binary was installed onto PATH.
    assert_path_exists bin/"ziggity"
  end
end
