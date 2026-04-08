class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.6/createos-darwin-arm64"
      sha256 "275138035ed14a7ef678050e20662371155ebaabfa8a0d5c46a285f5749b1351"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.6/createos-darwin-amd64"
      sha256 "6a39fce3811daea8749e08afe6055464ad0df403be4970028f2132fd8ceb32a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.6/createos-linux-arm64"
      sha256 "8aac7c3930a27ad760c11aec943ecd3fc31e8fdda96af225d4995f243619a87a"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.6/createos-linux-amd64"
      sha256 "924daf25afb5061897b3a66804ee949ec2a83ddebe38d53a54e6ae10d0f5f882"
    end
  end

  def install
    os = OS.mac? ? "darwin" : "linux"
    arch = Hardware::CPU.arm? ? "arm64" : "amd64"
    bin.install "createos-#{os}-#{arch}" => "createos"
  end

  test do
    system "#{bin}/createos", "version"
  end
end
