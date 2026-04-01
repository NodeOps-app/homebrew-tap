class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.3/createos-darwin-arm64"
      sha256 "1c9d54eb42f01e1158e93efbb138a7c659f5e91c54c9f64ee830d98164b3b3c9"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.3/createos-darwin-amd64"
      sha256 "f3510a26a1c4bc9b62ebcac6a4c695a8bfe3500b0aab8753a85f4337fc3c1c83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.3/createos-linux-arm64"
      sha256 "4f8a2eac858a6ac498e1593f1b71105416f8bf2eb68364f04e3968a43ef48cdb"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.3/createos-linux-amd64"
      sha256 "ff603f7c5200544086c9f1dd3d2b8213916a0693a018dbed0d395599986ec464"
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
