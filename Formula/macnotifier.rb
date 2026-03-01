class Macnotifier < Formula
  desc "macOS notification CLI with click actions"
  homepage "https://github.com/send/macnotifier"
  url "https://github.com/send/macnotifier/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "33182d927f98dad93d543eb4e1d8c48a13bfcdefca3570e07a52afee62b2df57"
  license "MIT"

  depends_on :macos

  def install
    system "./scripts/build.sh"
    prefix.install "macnotifier.app"
    bin.install "bin/macnotifier"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/macnotifier -h")
  end
end
