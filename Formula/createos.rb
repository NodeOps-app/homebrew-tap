class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.13/createos-darwin-arm64"
      sha256 "6dac426d05c6e636ca78ffd21587a1652486dc7b5c00fe9e8a83342f80f3363f"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.13/createos-darwin-amd64"
      sha256 "85532a37303e7bdfda3a85d9d06ee02d6c72a44268dbfc3c705d5b6e3a193336"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.13/createos-linux-arm64"
      sha256 "257ec67e00a9fa25aa2f6c619e0570766d5eecd91355875d7a6921b166b4125f"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.13/createos-linux-amd64"
      sha256 "f286b30929932ca620dce615e1d7c2c3f91b135df6ca5c1f088d15bc3f49d652"
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
