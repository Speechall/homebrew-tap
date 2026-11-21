class Speechall < Formula
  desc "CLI for speech-to-text transcription via the Speechall API"
  homepage "https://github.com/Speechall/speechall-cli"
  version "2.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.5.0/speechall-2.5.0-macos-arm64.tar.gz"
      sha256 "7bd262fae3b4a246cc334163f3046af4ede35f087f1e065f75ae1d8d1703bdcf"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.5.0/speechall-2.5.0-macos-amd64.tar.gz"
      sha256 "8f729692e36acd77f073d634d565249ed42b4c061d9fce0f17b60977c269a28b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.5.0/speechall-2.5.0-linux-arm64.tar.gz"
      sha256 "c4d08d3eddb5c46fc451a0e16363b533f10fc0277d4b10cc53c7d6eb53b44efd"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.5.0/speechall-2.5.0-linux-amd64.tar.gz"
      sha256 "f67a64fb6a9d036168b8f63a57c901e20867d93cd634eb8fc74ef6d2de29a355"
    end
  end

  def install
    bin.install "speechall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/speechall --version")
  end
end
