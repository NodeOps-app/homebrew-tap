class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.17/createos-darwin-arm64"
      sha256 "23ab2d6e6a720a22f38512ce13e54ce01526ffff5bc738c79bdd4dd5cae8e728"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.17/createos-darwin-amd64"
      sha256 "3b99da752474a65c71b941905e9666a1c5f0100a677a752284790d32e0e1be52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.17/createos-linux-arm64"
      sha256 "f80cfbb6caee7d2b08ca4afd738a4475c156c83e9b2d1bf10709adfa2162ee12"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.17/createos-linux-amd64"
      sha256 "9e674e2dbd733fe7832f06dfdfa8354641f9ae72478f786ecd7220a04173654d"
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
