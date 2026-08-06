class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.22/createos-darwin-arm64"
      sha256 "908db595ba5ccfd0bc0ed4cc0b0232e60a6418f90f4aaa226e77aec1dc1bbd7d"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.22/createos-darwin-amd64"
      sha256 "a38997e1b9368bfe0ee52dfd3180e354d01229984b4338faa85f4f0070bbd759"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.22/createos-linux-arm64"
      sha256 "c7ffbf84de52465b67881a85c91a511e2f85c6a187febd50a0a79f4cb925db49"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.22/createos-linux-amd64"
      sha256 "cccf93588d62743e4946fc6251daac03e8ee87a6f168baa5e877180cebd5b0a6"
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
