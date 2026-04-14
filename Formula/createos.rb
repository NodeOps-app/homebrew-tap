class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.9/createos-darwin-arm64"
      sha256 "478a5326f38c063027fc6ebd82ac108a10a80dbe2d088583fed9f36fbf811b68"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.9/createos-darwin-amd64"
      sha256 "5e0e4e73b56adbae9accd36aec2a454ccd4b58fcc6dd7a365f35d2330c30d980"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.9/createos-linux-arm64"
      sha256 "6a4dff681c48e81b996c52b9422656d0ffac2d653003ee91295c49f7ff20b25d"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.9/createos-linux-amd64"
      sha256 "72cad5ec8394f6d73386f5b430cc2d201b57b793288f502492be1d26ce6b4025"
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
