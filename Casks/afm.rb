cask "afm" do
  version "1.1.0"
  sha256 "0d39ffa0b422cc3291be8e0f10f59ff0ff4d12aa323daab9817fe812dd1a73b6"

  url "https://github.com/ardith666/afm/releases/download/v#{version}/AFM-#{version}-arm64.dmg",
      verified: "github.com/ardith666/afm/"
  name "AFM"
  desc "Apple Foundation Model Bridge — OpenAI-Compatible Local AI Server for macOS"
  homepage "https://ardith666.github.io/afm/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "AFM.app"

  uninstall quit: "com.ardith666.afm"

  zap trash: [
    "~/Library/Application Support/AFM",
    "~/Library/Caches/com.ardith666.afm",
    "~/Library/Preferences/com.ardith666.afm.plist",
  ]
end
