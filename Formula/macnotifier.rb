class Macnotifier < Formula
  desc "macOS notification CLI with click actions"
  homepage "https://github.com/send/macnotifier"
  url "https://github.com/send/macnotifier/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "b90f3387ee59d82f8d36e424a4522f7f85533de1577be19a68e0c9d27aeb35f4"
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
