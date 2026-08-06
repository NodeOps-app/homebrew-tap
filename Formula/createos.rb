class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.21/createos-darwin-arm64"
      sha256 "bbe78bd7ad19363c67dde316106ea06bde4feccda9915134b1e61b0eab4020d6"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.21/createos-darwin-amd64"
      sha256 "cfbc2517ebf77e923b3ebc25c0a372a4d4f58c0d87b87f6760e73cc1e3d7e241"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.21/createos-linux-arm64"
      sha256 "cae7ddc9e5cbcc59f97e9a1a74b954f4aaaf5fa21bf34bfa7a52bbb9b7c07f1b"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.21/createos-linux-amd64"
      sha256 "fa1485a2f31bfcbc34faf7e0caae544ff13ae217adcf75e15a43831f0b96d6fd"
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
