cask "afm" do
  version "1.0.0"
  sha256 "0fbc5a3cc5bceae39e855f195f4e5da15d7931f5371e53a53249b05d74df1b26  AFM-1.0.0-arm64.dmg"

  url "https://github.com/ardith666/afm/releases/download/v#{version}/AFM-#{version}-arm64.dmg"
  name "AFM"
  desc "Apple Foundation Model bridge to OpenAI-compatible HTTP API"
  homepage "https://github.com/ardith666/afm"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "AFM.app"

  zap trash: [
    "~/Library/Application Support/AFM",
    "~/Library/Caches/com.ardith666.afm",
    "~/Library/Preferences/com.ardith666.afm.plist",
  ]
end
