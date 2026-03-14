class Wahooks < Formula
  desc "CLI for WAHooks — manage WhatsApp connections, webhooks, and messaging"
  homepage "https://github.com/dhruvyad/wahooks"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-arm64"
      sha256 "c9c3a0f96414ed9f3d14b0fb6a7e5e4aad05b3463e61db826d38a30e371293b6"
    end

    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-amd64"
      sha256 "b887e54f009152588740433ac01ab02396b06195258b1c8fd2aade940fb0907e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-arm64"
      sha256 "5082548424945a28febdc1973c382be5acdab3a9b4ac6ef75efc08a320295e36"
    end

    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-amd64"
      sha256 "4f8200acdd3f13a080fdbca8aa63208463259d97b842c885f72078860c2b8ea6"
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
