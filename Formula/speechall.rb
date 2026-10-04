class Speechall < Formula
  desc "CLI for speech-to-text transcription via the Speechall API"
  homepage "https://github.com/Speechall/speechall-cli"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.0.0/speechall-2.0.0-macos-arm64.tar.gz"
      sha256 "b7e61f4f64dd505624ad7bc11c2c210b23297425275ecaf7a646d0b27511e20a"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.0.0/speechall-2.0.0-macos-amd64.tar.gz"
      sha256 "cee8074e1a9b9d9088705065ac10abcd5a207092af2cd86609522a6765f4d348"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.0.0/speechall-2.0.0-linux-arm64.tar.gz"
      sha256 "94f730d9e0eaf5728c0e041f61362413a1ebf291786ad9e68b6502eccdc39baa"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.0.0/speechall-2.0.0-linux-amd64.tar.gz"
      sha256 "a46dde89edff586c884949a1245e2ce8f52ea01b52ee5451f6652e7601d12fc6"
    end
  end

  def install
    bin.install "speechall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/speechall --version")
  end
end
