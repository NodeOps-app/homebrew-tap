class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.39/createos-darwin-arm64"
      sha256 "7345687ca9a365b56c2800077cfd6fb0632a4263aedec007aa193d1a2f1a1eed"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.39/createos-darwin-amd64"
      sha256 "6a200a57dae44932ebc7819ce75f85b7db920fac29c06d0ab569c1e9d8f2c632"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.39/createos-linux-arm64"
      sha256 "cd87939f758f8e37738e7c75cf65b4c91b12d063db3c0c194d262f7dc1c7fcf7"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.39/createos-linux-amd64"
      sha256 "439870eeaf7c69df3863422efba27d08a47e0cffa81fd8a9b302d4cd4800019d"
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
