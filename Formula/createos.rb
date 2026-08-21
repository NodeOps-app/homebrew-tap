class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.24/createos-darwin-arm64"
      sha256 "d59e9477ac2227b58e2d4feb1b3959fc1329f98a4541634f67b075cb6ff17718"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.24/createos-darwin-amd64"
      sha256 "e68a7baf6d7befe356677cb1d100b647d9c7e793b6fcb682d6006985ac640ff0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.24/createos-linux-arm64"
      sha256 "91aedc4e50fabf6915a35d964815d31fb36158ebddc2a59df1e2c28e85698e91"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.24/createos-linux-amd64"
      sha256 "bdf441a72d8d9b956dd29024cfbcfd81bed2f739d6f510297a05eb04fa6fc23e"
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
