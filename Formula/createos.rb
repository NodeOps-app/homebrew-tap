class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.3/createos-darwin-arm64"
      sha256 "1c9d54eb42f01e1158e93efbb138a7c659f5e91c54c9f64ee830d98164b3b3c9"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.3/createos-darwin-amd64"
      sha256 "f3510a26a1c4bc9b62ebcac6a4c695a8bfe3500b0aab8753a85f4337fc3c1c83"
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
