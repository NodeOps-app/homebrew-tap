class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.4/createos-darwin-arm64"
      sha256 "0923b6d3466549236f28a637aa33f3256175b714d8aa9db5d555464fff72dbe5"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.4/createos-darwin-amd64"
      sha256 "c6b0394a216c5e43291727e632a531e3d880360198fbe43db2deb2e845c639bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.4/createos-linux-arm64"
      sha256 "5aa35974e4932b22c6fc0db7bb7a2a88e4b19637dc4ec2e08d413d9df3574e83"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.4/createos-linux-amd64"
      sha256 "f925363af7676abb31671ea6a403b3e016c6d81cc35b0a6db3578e7e1d491f44"
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
