class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.5/createos-darwin-arm64"
      sha256 "832c43ef238c5278def4219d4c46114fc2d182b41b6739be2c94d4ec4f29c826"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.5/createos-darwin-amd64"
      sha256 "2989bc03d0b9753d5b3aaa39f284a27e89c9637ba271d7de99e0a561f11f7575"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.5/createos-linux-arm64"
      sha256 "857b09d3dc44e7a3cd4e329421fac6e8b0ea94122da90d3400fc93fe4545c57f"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.5/createos-linux-amd64"
      sha256 "2b8281094fb7649b6d6362f765f6e2aa690d00d19477bce63b55b374e3315e87"
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
