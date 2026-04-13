class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.7/createos-darwin-arm64"
      sha256 "c9d1089b6723ec3c7d1781f071b8b71c51f5170cdbebf592bbd6501348654817"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.7/createos-darwin-amd64"
      sha256 "c2f24a363b3dad846e4a72506c8fd048bb9417a78e22d664c1d993668cc5d4d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.7/createos-linux-arm64"
      sha256 "b4ce03a993a88cb2836d9222afc62129e19d99f787d23d38c62053a83ad49b63"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.7/createos-linux-amd64"
      sha256 "0213b84c08b480de0ba88a906743b1897a64e9467fd1a141c522d0864d20082a"
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
