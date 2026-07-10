class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.18/createos-darwin-arm64"
      sha256 "8b182881b85888f34998e2832f462caf0709464535c5265f0434d95a41b7262a"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.18/createos-darwin-amd64"
      sha256 "769ee0b45c080cb1fcf83523011e1c5c08bab10f6791460adde2caa0d04dced7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.18/createos-linux-arm64"
      sha256 "a1249e3fb15153f2904ec2b9c5ee3ec6a51fffd9971d075f75cf8a6498dae46f"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.18/createos-linux-amd64"
      sha256 "9b96d81c73868bfeb50d3d76237048bf0f4c994669786ac6e487892a54e8fcec"
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
