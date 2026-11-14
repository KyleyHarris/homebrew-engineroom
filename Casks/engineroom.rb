# Written by engineroom's release (scripts/release-tap.sh); edit that, not this file.
cask "engineroom" do
  version "0.2.1"
  sha256 "2768055459ca02291ebfdc6d2c2fb72ab0cf0d443f24fde16f6941bec6e2be8e"

  url "https://github.com/KyleyHarris/engineroom/releases/download/v#{version}/engineroom-app-#{version}.zip"
  name "engineroom"
  desc "Menu bar app for engineroom's Claude Code sessions"
  homepage "https://github.com/KyleyHarris/engineroom"

  depends_on arch: :arm64
  depends_on formula: "kyleyharris/engineroom/engineroom"
  depends_on macos: :ventura

  app "engineroom.app"
end
