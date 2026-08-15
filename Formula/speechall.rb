class Speechall < Formula
  desc "CLI for speech-to-text transcription via the Speechall API"
  homepage "https://github.com/Speechall/speechall-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v0.3.0/speechall-0.3.0-macos-arm64.tar.gz"
      sha256 "a3bd6f726127c7309d76d824c0354f33bfd4e0201bee42bc4be1d64dcadc0bf4"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v0.3.0/speechall-0.3.0-macos-amd64.tar.gz"
      sha256 "4878bbcc75633396d6115e93e37020723c41533864ea621978a0eb6e9f0dfbc8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v0.3.0/speechall-0.3.0-linux-arm64.tar.gz"
      sha256 "3d095370aa20a2fc44e1c696c80cade7b1a0bb0c3ce2bdf1b0454f4e2e5a4f37"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v0.3.0/speechall-0.3.0-linux-amd64.tar.gz"
      sha256 "178f2b699bdc33f27e1b64581c09b8408546dfebba4eb56ba84170d4f380c61d"
    end
  end

  def install
    bin.install "speechall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/speechall --version")
  end
end
