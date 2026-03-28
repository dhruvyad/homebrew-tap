class Wahooks < Formula
  desc "CLI for WAHooks — manage WhatsApp connections, webhooks, and messaging"
  homepage "https://github.com/dhruvyad/wahooks"
  version "0.13.0"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-arm64"
      sha256 "014801a7aecc2bc4e59584c3cddcc81c42c94bfd75587efe8c91e75f3cb38279"
    end
    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-darwin-amd64"
      sha256 "d7da807e374f92737b50244b4bbb578f6ad418999ec2165e103e216b1daecf61"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-arm64"
      sha256 "df841af368f8cdd49d40026c590621a42638b6f6d2f50c34722f5202cb81ef2c"
    end
    on_intel do
      url "https://github.com/dhruvyad/wahooks/releases/download/cli-v#{version}/wahooks-linux-amd64"
      sha256 "ec5e9b91565f28d621390c3e96c5dd65a037303943c120634ad078ffa429646a"
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
