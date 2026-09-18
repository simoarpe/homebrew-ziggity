class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.42.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.42.0/ziggity-v0.42.0-aarch64-macos.tar.gz"
      sha256 "9d269ff05ed30605253be1c78aa66a15d373d5a0542d3c741f9d494412af8b4d"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.42.0/ziggity-v0.42.0-x86_64-macos.tar.gz"
      sha256 "784484a94b6314ab6a960e9a1f4a4b1ddd4b22ce99eb34fa2d489e4f0510af4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.42.0/ziggity-v0.42.0-aarch64-linux-musl.tar.gz"
      sha256 "3d96c9d1544ad5fc08c937052a6fcfce031a0e00184a5d482ada9fc92091846f"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.42.0/ziggity-v0.42.0-x86_64-linux-musl.tar.gz"
      sha256 "255eb12117a649c5bbeb51a3c580d1e5e06b4977bb321fcef8d00ac34f679725"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
