class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.36/createos-darwin-arm64"
      sha256 "b871da38dea21ee3ea949a7ff06335477e26b02fc603b6437dd7709c68ae6c78"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.36/createos-darwin-amd64"
      sha256 "0320897380ac3b74ce2705d0c74b9c13bb031ae9cb94f1f43a318f3a3fd65e99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.36/createos-linux-arm64"
      sha256 "2fca084014997b00721289bb908af9db8cd06524c1a8d09cd7cc9e0ed9bcd6ee"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.36/createos-linux-amd64"
      sha256 "66d43bd66e639780d694e077b07d9e57a4a41626b6278a961c77ce10d7e49273"
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
