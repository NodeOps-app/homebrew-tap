class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.11/createos-darwin-arm64"
      sha256 "88e2e344aaedca1ddbf919058e07adb1671ec8621fece1b6c59b7ba4f5e68480"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.11/createos-darwin-amd64"
      sha256 "11ac68e65fa03ce1025e53eefe0f8764e91096446257ab7e6a08e31e420428ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.11/createos-linux-arm64"
      sha256 "3d13b76ee460571286eabe595a94dfb721683347b9a1ff0261cc76f919573079"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.11/createos-linux-amd64"
      sha256 "ca0ee4866f18088ef69ee71ea3ce879a74e1915083c52d05b7eb12fe4dc0e8af"
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
