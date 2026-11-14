# Written by engineroom's release (scripts/release-tap.sh); edit that, not this file.
cask "engineroom" do
  version "0.2.0"
  sha256 "dbfa02ad1f8507dcd61c210ef9831b8cdf84364f4d45131eb0b73a110a24a3dd"

  url "https://github.com/KyleyHarris/engineroom/releases/download/v#{version}/engineroom-app-#{version}.zip"
  name "engineroom"
  desc "Menu bar app for engineroom's Claude Code sessions"
  homepage "https://github.com/KyleyHarris/engineroom"

  depends_on arch: :arm64
  depends_on formula: "kyleyharris/engineroom/engineroom"
  depends_on macos: :ventura

  app "engineroom.app"
end
