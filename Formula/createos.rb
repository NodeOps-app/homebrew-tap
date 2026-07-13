class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.19/createos-darwin-arm64"
      sha256 "989cb1675d9b3d615ad7af9a53f004d24df5d6bf4385b9bd518950ab8dfc5a9a"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.19/createos-darwin-amd64"
      sha256 "21e48cf511f09066a411fa50bc344cfe134ff2ee520514fcce7ebabcae9444ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.19/createos-linux-arm64"
      sha256 "ec66c7deb657edf5cf36a5c72f5bd19f3c2dd82fb0376c6655091200b76b77aa"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.19/createos-linux-amd64"
      sha256 "40307310666837ab6fe7affdffa3d20b5685900c777c0fa570941f27905f367b"
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
