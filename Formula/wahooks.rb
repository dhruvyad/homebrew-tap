class Wahooks < Formula
  desc "CLI for WAHooks — manage WhatsApp connections, webhooks, and messaging"
  homepage "https://github.com/dhruvyad/wahooks"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-arm64"
      sha256 "1d4599ed0c61983ba2e734ec7e70294ec0d2d2c2e99f8d7b26b6b80ec233ed22"
    end
    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-amd64"
      sha256 "41b388dff446031367c84ae916305522e40b96f1d15d64a4ff293edf8e82f832"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-arm64"
      sha256 "a9c1da8ce155f4c7ff65d132b285c43e8056faae969d53cec4c28e8efea776b6"
    end
    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-amd64"
      sha256 "a3a81d11a023557d5259beb09f7cd75d19f06da573e713d13d8b348cc1150441"
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
