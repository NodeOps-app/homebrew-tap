class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.25/createos-darwin-arm64"
      sha256 "62a54d011d8c08274fc1588a2ed9b3fdf29edcddfa02b1baa2169867da26b4b1"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.25/createos-darwin-amd64"
      sha256 "6c3b5e3e4916fc490537e103bb5a7d8f6eb5159d50f9723db175ff64e3e72ae0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.25/createos-linux-arm64"
      sha256 "6a64597ddd660fd868d55f1e8bba712f4e8fa53cd11043be6c8aa618cb1d51b4"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.25/createos-linux-amd64"
      sha256 "ebc80472a80c8a2a0097b1d3e891bc497668a1e6e1f04fede5a3280911d925bc"
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
