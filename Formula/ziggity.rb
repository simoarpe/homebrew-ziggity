class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.11.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.11.0/ziggity-v0.11.0-aarch64-macos.tar.gz"
      sha256 "d348223105f11a5542ae64f5f90f3bcd1c7233fd5f28063462aee019772df2c9"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.11.0/ziggity-v0.11.0-x86_64-macos.tar.gz"
      sha256 "43bcd3e2df8cc5bd47682c30a355e5f15a76f5a30b77a4cecd2e59a6fdef9792"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.11.0/ziggity-v0.11.0-aarch64-linux-musl.tar.gz"
      sha256 "e4caf80429946fa6e4d844680e1884578929a9eb810c9dbdc0c22227a3fa777c"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.11.0/ziggity-v0.11.0-x86_64-linux-musl.tar.gz"
      sha256 "0734acb79b58e68fe5c2003594ad42c616dc71847f492b5ac5cc3c078543954a"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
