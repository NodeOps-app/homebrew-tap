class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.14/createos-darwin-arm64"
      sha256 "5986fb71631ed38c57d2694624f4c521cdaf6f04b8e99f02da6120002001363e"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.14/createos-darwin-amd64"
      sha256 "bec8ab146c53aff7cbd4986cfe595b37506ae90eca3de184ee07d84ed7fa591f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.14/createos-linux-arm64"
      sha256 "7a65e9f24920096b1345eabc626311b6996cf44577bd82bbfa2ae02a1fec011d"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.14/createos-linux-amd64"
      sha256 "0ac9517bcbf4f302f56f841b0c2a6c9a4ed3871610c11d06e7809f770f46dae8"
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
