class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.10/createos-darwin-arm64"
      sha256 "fcf2c8c1cf0853bd013cf571b3b95ab3d9f89e8259b28287c6ce5190dab20351"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.10/createos-darwin-amd64"
      sha256 "4dbdcf9add543dafede342c5513f44937cd849363f2741fe4279b73ce42b7b3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.10/createos-linux-arm64"
      sha256 "817c0b3d949e27cc0ab6c2917f726e35a81cf4b07c9b3d1e99b16eda64e812e1"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.10/createos-linux-amd64"
      sha256 "8b27533b0d9c45426bdbf3458b2c42d49180818361b482e97d01a5c0a83bb535"
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
