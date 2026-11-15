class Speechall < Formula
  desc "CLI for speech-to-text transcription via the Speechall API"
  homepage "https://github.com/Speechall/speechall-cli"
  version "2.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.4.0/speechall-2.4.0-macos-arm64.tar.gz"
      sha256 "a98d162d8e3c00d6490298037f52c19e1fe6a1dd2bfbd5a4cedf5c3446934824"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.4.0/speechall-2.4.0-macos-amd64.tar.gz"
      sha256 "0fecc089d7fd91fea800be283be33335727f71264d1d3fd15caa28706a35a683"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.4.0/speechall-2.4.0-linux-arm64.tar.gz"
      sha256 "99a357f363874e0ac61bf133d9f43a261f5c92fa4fe6d5ed1c08d75962da0e30"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.4.0/speechall-2.4.0-linux-amd64.tar.gz"
      sha256 "02badacb7a26577da65a8622033d59b79bc6af278d7a3b093aaf4caad4a8e02e"
    end
  end

  def install
    bin.install "speechall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/speechall --version")
  end
end
