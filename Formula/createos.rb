class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.35/createos-darwin-arm64"
      sha256 "e8f974140772f9bf1874e94c8b741b258d95d236bf9f973ebbd84e502370dc36"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.35/createos-darwin-amd64"
      sha256 "770fa45d5ee1dedfab124e3b999a5d23c3cc2974d8ce245a41e90a3d479f1f30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.35/createos-linux-arm64"
      sha256 "e4387a6dc47ec12b663f8f488ffde1819dd711815fe72fc1231fc3c50bff1595"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.35/createos-linux-amd64"
      sha256 "61a2845b9908c0f7d730fa3cadfae196808d2af0eee9cfae0a741bfb7ebcfb2e"
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
