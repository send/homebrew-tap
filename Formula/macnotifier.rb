class Macnotifier < Formula
  desc "macOS notification CLI with click actions"
  homepage "https://github.com/send/macnotifier"
  url "https://github.com/send/macnotifier/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "5f598f293f512d15c985782efae22064e796171648220fb349e5b606149eb377"
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
