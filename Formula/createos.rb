class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.26/createos-darwin-arm64"
      sha256 "be997c8542bd75955acb85e46d5228b35d745d5d92e28b4b969f1702864c0952"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.26/createos-darwin-amd64"
      sha256 "b91662feda5fffe2127c7a9a8beb7f28252ddb0301247bfed0765a258af4ed22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.26/createos-linux-arm64"
      sha256 "11af6808ec32b74e248a77b48a4a0486e60136145c049a4d3d99676370b972e3"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.26/createos-linux-amd64"
      sha256 "bfca9aa0b32af7fff9732312e1f7069a7580c5a6ac90532d64926f90b69b4b83"
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
