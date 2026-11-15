class Speechall < Formula
  desc "CLI for speech-to-text transcription via the Speechall API"
  homepage "https://github.com/Speechall/speechall-cli"
  version "2.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.4.1/speechall-2.4.1-macos-arm64.tar.gz"
      sha256 "eac397a18f5f703384320e8430824bd0fd65eee22b0fecc97bef573d7fbf6ea3"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.4.1/speechall-2.4.1-macos-amd64.tar.gz"
      sha256 "f1029d5e7613f02f7f8354409d381a6cf285fdb8cd640c7276269d8eee9427d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.4.1/speechall-2.4.1-linux-arm64.tar.gz"
      sha256 "a2278c63c829d222aa30d8ae41afb12332704541bd778ec5baf3827add961c93"
    end
    on_intel do
      url "https://github.com/Speechall/speechall-cli/releases/download/v2.4.1/speechall-2.4.1-linux-amd64.tar.gz"
      sha256 "543118d826aa73f92e927be735357cb826d366419e2d920b75c11baa43feb3bd"
    end
  end

  def install
    bin.install "speechall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/speechall --version")
  end
end
