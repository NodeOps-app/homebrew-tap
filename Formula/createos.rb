class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.15/createos-darwin-arm64"
      sha256 "35a260427ce4ab0c77da429642092e471cd3dbee1c50b563220682e93854da03"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.15/createos-darwin-amd64"
      sha256 "e70039f53bfc56f66c57c6ee072de5412c6bd88446cc3ad91126d481f3e435e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.15/createos-linux-arm64"
      sha256 "955c4ff755954139e9424509d9edd44c50f8f9109ac9935c9e2b9593a479f114"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.15/createos-linux-amd64"
      sha256 "665ac3223d9f89072d560bcd801248724474663174840d16ea6645be6dad3459"
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
