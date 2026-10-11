class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.31/createos-darwin-arm64"
      sha256 "96d9b5b26162e731b60cb161ba32c7532a607e3534d5790485727dd41713011a"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.31/createos-darwin-amd64"
      sha256 "6c2edadf87945823f71033a9ed597d6440b3174336b27a65468ebe59b642ba3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.31/createos-linux-arm64"
      sha256 "d0dfb3a2b003435b69c34d5f830036a3522d4b4c130c5e00d5ec47a60325a3fe"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.31/createos-linux-amd64"
      sha256 "d24c13acb0e749d491f53f27d36fc1939158661df62b02383a1c4b085a92212d"
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
