class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.23/createos-darwin-arm64"
      sha256 "2a0842529723fc31169fe2361d0d5bca6a8e97b8280bbdd8e5f0a1fde04e69be"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.23/createos-darwin-amd64"
      sha256 "9504a3371d91a482e06329e3644639613ae27ae20730f14a9cdd88ab8d3cc86b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.23/createos-linux-arm64"
      sha256 "542e77e7a14b1ff9b549ceb79c804f5a88a5dee853447e73931f2828ba7e9f61"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.23/createos-linux-amd64"
      sha256 "571002d8d404d6ba2be0aeb9457b2a1f92538d3372aa17c7c4ef7f426dc85de6"
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
