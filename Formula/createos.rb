class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.8/createos-darwin-arm64"
      sha256 "533f76aa57e0a69d4097abc72fd6b2277e701eda3c110ba943dba65a56c3f51d"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.8/createos-darwin-amd64"
      sha256 "d477c7a2a3db399741b6ab7e3c0a264dfaecbac59e03678d90848531ffc9ec86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.8/createos-linux-arm64"
      sha256 "0b95280e6d85df01d3ee238c04d3ee31ab879e46c11e3e01678a3972ab6a980f"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.8/createos-linux-amd64"
      sha256 "a590ee6213e8c3f57d756374f7a86d7e38ee393837bcb936e7ad31067e43d60a"
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
