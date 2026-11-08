cask "afm" do
  version "1.0.0"
  sha256 "eb865ccd7440d486f9b57bac442024a11a27f1f9c9bebeacab74c2cb1f596d52"

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
