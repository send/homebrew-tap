class Macnotifier < Formula
  desc "macOS notification CLI with click actions"
  homepage "https://github.com/send/macnotifier"
  url "https://github.com/send/macnotifier/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "b63ac9ef94e1fd24ca4b525ffb21de3f27cbbd16a0cdc64cc0f1b852e27897d4"
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
