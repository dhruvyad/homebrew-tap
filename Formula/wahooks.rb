class Wahooks < Formula
  desc "CLI for WAHooks — manage WhatsApp connections, webhooks, and messaging"
  homepage "https://github.com/dhruvyad/wahooks"
  version "0.15.0"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-arm64"
      sha256 "90cc57264ba7a6bc32139920fe14476b642363cd179b7c93a8ab4568822ba48b"
    end
    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-amd64"
      sha256 "e1e86b7946743b4a16f9749fced56c098a16993458a3bc917d270739aad9d89e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-arm64"
      sha256 "22c3449ff927f923e20120c30bd6127f0fb2bfeef2cfacca60356a617cac1cf7"
    end
    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-amd64"
      sha256 "21a9e6f57ab2330ed202e9f5664789da9e2fa5183da4d1a972453461a02d0a4b"
    end
  end
  def install
    binary = Dir["wahooks-*"].first || "wahooks"
    bin.install binary => "wahooks"
  end
  test do
    assert_match "WAHooks CLI", shell_output("#{bin}/wahooks --help")
  end
end
