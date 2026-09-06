class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.28/createos-darwin-arm64"
      sha256 "73c541b67151dd975225d3afe224cbff33302dd83fccd55bd04cf79ed7990873"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.28/createos-darwin-amd64"
      sha256 "98b14a7cbb47b96c1f055000acbcf2b328d30b28ff15f1c58ba48adbfa8a5789"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.28/createos-linux-arm64"
      sha256 "7d5fd9143626c09bc7744cd9e9cc223e3d33068a138cdd66ffdf4906a10758b1"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.28/createos-linux-amd64"
      sha256 "d9b8557d58714bb10caa3ba28124b34c90fd44e7f68c902384ecdead5faf7a06"
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
