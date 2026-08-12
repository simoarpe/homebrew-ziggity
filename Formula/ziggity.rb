class Ziggity < Formula
  desc "Terminal UI for Git, written in Zig"
  homepage "https://github.com/simoarpe/ziggity"
  version "0.18.0"
  license "MIT"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.18.0/ziggity-v0.18.0-aarch64-macos.tar.gz"
      sha256 "a48b44b63cdbee05c8d6af90f2626dd149c6f48b40132bbd22ccdf666ff62891"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.18.0/ziggity-v0.18.0-x86_64-macos.tar.gz"
      sha256 "42bff6a7bea28a695a09fd20d2b90e0263fdfb49a49dda9b7a307ce70adf27fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.18.0/ziggity-v0.18.0-aarch64-linux-musl.tar.gz"
      sha256 "d474d5d4f314de247cc0b11d9275265ebbe8784fc06eec300c4f295c225df808"
    end
    on_intel do
      url "https://github.com/simoarpe/ziggity/releases/download/v0.18.0/ziggity-v0.18.0-x86_64-linux-musl.tar.gz"
      sha256 "8173e3be2f113c933044d1394179c06ba1cd1c707b5328e4826b1a6f153fa8fe"
    end
  end

  def install
    bin.install "ziggity"
  end

  test do
    assert_match "ziggity #{version}", shell_output("#{bin}/ziggity --version")
  end
end
