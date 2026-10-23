class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.32/createos-darwin-arm64"
      sha256 "2453082569662b015c0fd9bce62fc7fac4702e1b361996b4a2112ff9d47626f7"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.32/createos-darwin-amd64"
      sha256 "027fc79225fb383363f9fa0ab23b742fd61387bfb9a95cd549139fb8c57e8a64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.32/createos-linux-arm64"
      sha256 "f4f3e93dd856151d8c96ae3f404205b52afec3f11c5676404512670cbf5bd975"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.32/createos-linux-amd64"
      sha256 "0bb45a7e71ed01ee4694c3682a581e8cfbf60382177fa5109cd59a4294949e2d"
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
