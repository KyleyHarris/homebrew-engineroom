# Written by engineroom's release (scripts/release-tap.sh); edit that, not this file.
class Engineroom < Formula
  desc "Run Claude Code sessions on one Mac and work on them from any other"
  homepage "https://github.com/KyleyHarris/engineroom"
  url "https://github.com/KyleyHarris/engineroom/releases/download/v0.2.1/engineroom-0.2.1-macos.tar.gz"
  version "0.2.1"
  sha256 "01dc97ce1c4028f1309197a4fe893b89b0d81786c79949d0452f35c2484ac5a5"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on "zellij"

  def install
    bin.install "engineroom"
  end

  test do
    assert_match "engineroom v0.2.1", shell_output("#{bin}/engineroom version")
  end
end
