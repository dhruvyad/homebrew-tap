class Wahooks < Formula
  desc "CLI for WAHooks — manage WhatsApp connections, webhooks, and messaging"
  homepage "https://github.com/dhruvyad/wahooks"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-arm64"
      sha256 "24dd57f97a09264100cb4e0036bb8e756ce3544d1d3bd12f7ba3f4905561154c"
    end
    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-amd64"
      sha256 "581c55b71bc9fc635e4b4d0ae485e58bfdb0eb60ff12c756bafa302cdd4258bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-arm64"
      sha256 "0b94c58fc669aa2bf1e2e9b874e07832408fd4a5f21ebc843da1fee314c470fb"
    end
    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-amd64"
      sha256 "6ece9d75828ccded638b115f4a59d9d529d7f270d7357cc368f1691ae622fd3d"
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
