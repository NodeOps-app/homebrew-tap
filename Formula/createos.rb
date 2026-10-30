class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.34/createos-darwin-arm64"
      sha256 "f3e9d150642dafdec867f961537cbcbaad7f6e785131ddca85f9e32309539c18"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.34/createos-darwin-amd64"
      sha256 "dbef257245a7ce9d1410a93e8d2e0a772a386be449e7c770c588ab32dd284889"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.34/createos-linux-arm64"
      sha256 "5c2e534d95e5dd64a73ffecd33e5a7e95a016bb9b09277a2c7c54b1ca67c1f8b"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.34/createos-linux-amd64"
      sha256 "0ba4b343e79ad66a3c45b194122712d12c186cabe6895b6be474d2ffd538aa8e"
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
