# Written by engineroom's release (scripts/release-tap.sh); edit that, not this file.
class Engineroom < Formula
  desc "Run Claude Code sessions on one Mac and work on them from any other"
  homepage "https://github.com/KyleyHarris/engineroom"
  url "https://github.com/KyleyHarris/engineroom/releases/download/v0.2.0/engineroom-0.2.0-macos.tar.gz"
  version "0.2.0"
  sha256 "50c1f2fc3dff8ddad3833e4808d8ede935ade8fd48ab2584dff7fb3d7a2163b8"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on "zellij"

  def install
    bin.install "engineroom"
  end

  test do
    assert_match "engineroom v0.2.0", shell_output("#{bin}/engineroom version")
  end
end
