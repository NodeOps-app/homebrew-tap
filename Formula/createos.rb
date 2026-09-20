class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.29/createos-darwin-arm64"
      sha256 "c102ccc144137af7388b8b4e429ebff5e4290d7b949d930b02c19d49267be8d1"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.29/createos-darwin-amd64"
      sha256 "3ba162fe685b30a6d592d049b0dd4fc1267cf3d9d4b16f06a6958c7a6c775391"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.29/createos-linux-arm64"
      sha256 "280602b47823db09a2f3d5af55b20a118cff1bf2f62479b4f0c6a04c239fe3e6"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.29/createos-linux-amd64"
      sha256 "c8aeaf1f4ecf0dad449865a610d03b7759ce86575d98c7f327a6e730d4daf2c1"
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
