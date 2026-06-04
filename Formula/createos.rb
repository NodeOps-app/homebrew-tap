class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.12/createos-darwin-arm64"
      sha256 "ae6bb7056b3f2a76acea2200b33f390e618b1cf78246b7eb763c64ce61962ff9"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.12/createos-darwin-amd64"
      sha256 "9600cfdecfab56c6bfca6539e8a5bfbcccd6fca49531d9e82bdb02d66fdeaf37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.12/createos-linux-arm64"
      sha256 "e4daf371f3e48c33e0ec65e90948d6b4b488416b1a6e290a82fe67e6a992d84d"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.12/createos-linux-amd64"
      sha256 "d6c2d1bae072f56e50201ee1c91c75fedbb5967266c3e1e23bcddbf727a5b5ec"
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
