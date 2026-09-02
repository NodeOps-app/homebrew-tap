class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.27/createos-darwin-arm64"
      sha256 "048b3dca9e02eb331527a4f4c2dac6c210654fad8e0a365092c31e1d772a7495"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.27/createos-darwin-amd64"
      sha256 "74204e64b4eb9fa123e3b1d4d8097914d6cec37468d0828a40aa33b2d26f81d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.27/createos-linux-arm64"
      sha256 "5dc81e2fb7792a51cc368d289a073f1b700c50b2e30fad41fa72a65a6adf5f13"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.27/createos-linux-amd64"
      sha256 "719ab9502ea375d1e5a00162b6048f8a99edc1cab1001776f40120d93ad6120b"
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
