class Wahooks < Formula
  desc "CLI for WAHooks — manage WhatsApp connections, webhooks, and messaging"
  homepage "https://github.com/dhruvyad/wahooks"
  version "0.11.0"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-arm64"
      sha256 "4c21ba5f3f77db7453159101551f3d01da27ad6c57d1f7a5cd82f112af880913"
    end
    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-amd64"
      sha256 "d8ddae45e315e78df2becef66ded8b4707345e3a59f33d51f744885e9380187d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-arm64"
      sha256 "e852f9d863923a13a401743e2bb92dd295fec0c2f7b4939d13d48b2b563e0d8f"
    end
    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-amd64"
      sha256 "abc82f75a370a7da1aeeca973477f406d6793c66203e54d4194ea4e0d0f5ee77"
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
