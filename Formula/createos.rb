class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.33/createos-darwin-arm64"
      sha256 "def6b577fbefc1e524c16d95a0f5b54e7f355f9a2afd7fca5b3d89cfd0ee57b9"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.33/createos-darwin-amd64"
      sha256 "19ee964f8aaf3bf5f88fe2821b6d23caec6dac93c7204859b99a099f502b2221"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.33/createos-linux-arm64"
      sha256 "13d3f5c9fa0c5574a81c5eeab318421cccf0f011c9cf9cd7604656ef9e475c64"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.33/createos-linux-amd64"
      sha256 "08cf469f208ad7ce6e869b699184730c7b086b0630d112bc35bfbe3b999e71b5"
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
