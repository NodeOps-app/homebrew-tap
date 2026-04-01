class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.1/createos-darwin-arm64"
      sha256 "d905fead64f99b7dcf35d57c00c48a55b4894a90d5bd57ba00828f272ee7ae64"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.1/createos-darwin-amd64"
      sha256 "cd81a996bed79447489e77557a116890b6832f65657fda07facdb8f4bcbeafeb"
    end
  end

  def install
    binary = Hardware::CPU.arm? ? "createos-darwin-arm64" : "createos-darwin-amd64"
    bin.install binary => "createos"
  end

  test do
    system "#{bin}/createos", "version"
  end
end
