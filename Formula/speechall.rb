class Speechall < Formula
  desc "CLI for speech-to-text transcription via the Speechall API"
  homepage "https://github.com/Speechall/speechall-cli"
  version "2.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.2.0/speechall-2.2.0-macos-arm64.tar.gz"
      sha256 "f09de317b01973d680d603d2e73511b0749eddc41d55ba4e7248eba7e9ebf0c7"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.2.0/speechall-2.2.0-macos-amd64.tar.gz"
      sha256 "0b4b66cd7959d4fe988c7bdf033fda6b1872fe6f783f4516dd6331aaf029313d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.2.0/speechall-2.2.0-linux-arm64.tar.gz"
      sha256 "3068562ec47f59c62e1d61e4a72b67adf56f71a7512674bb4854ffa54d9050e6"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.2.0/speechall-2.2.0-linux-amd64.tar.gz"
      sha256 "c574152554ef1aa09f8f378f3d7c9f8e75b3f1713af9a4dccf9a96c089e70543"
    end
  end

  def install
    bin.install "speechall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/speechall --version")
  end
end
