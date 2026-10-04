class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.30/createos-darwin-arm64"
      sha256 "38318777d1e37ff99716df080c102d2ac9f110e1d7bf3fc975ea1abdeceffeec"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.30/createos-darwin-amd64"
      sha256 "658575d05092e7ee2a6ea85943d5f5247c4eb1efc558ec891b77b40e28473027"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.30/createos-linux-arm64"
      sha256 "8b9d97aeaf7d77d21043342ab162b32147b0c11b4a5c5de697371cbbe187048d"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.30/createos-linux-amd64"
      sha256 "7e0e780472d8cef3ae8c72bbd5a720063bc833f256bfd392c592aa841f5f7385"
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
