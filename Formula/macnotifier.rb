class Macnotifier < Formula
  desc "macOS notification CLI with click actions"
  homepage "https://github.com/send/macnotifier"
  url "https://github.com/send/macnotifier/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "90620ac140ee749794a634a8c5f9add050f90b33865175850698f5c0f96e6c81"
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
