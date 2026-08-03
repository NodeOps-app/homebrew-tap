class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.20/createos-darwin-arm64"
      sha256 "cd467025cc3f0ca8b22c7c95905a336bc7208f59f0652f91e7f3c994a3a77679"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.20/createos-darwin-amd64"
      sha256 "29ec9270f105e012858dd54a9519326efb481076f419297f5714d40954f4eccb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.20/createos-linux-arm64"
      sha256 "348685c514fdeb7670805bfa730d163a426d2096188b385149a2b3959aa9f773"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.20/createos-linux-amd64"
      sha256 "4c55dd0825a97e835e1a94ee19a92b74db0e7dffaf1f2653bbe1a7bbdafa787f"
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
