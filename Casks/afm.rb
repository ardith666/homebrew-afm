cask "afm" do
  version "1.0.0"
  sha256 "5f32d6c9254fc70f50bf83ad82ef4fd35a1d38a18676d6f9e50a320112ed5f2c"

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
