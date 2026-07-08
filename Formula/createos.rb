class Createos < Formula
  desc "CreateOS CLI - Manage your infrastructure"
  homepage "https://github.com/NodeOps-app/createos-cli"
  version "0.0.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.16/createos-darwin-arm64"
      sha256 "e804902483fa0ccac6a8bb57eb5b9d68eaf8859d19ae41aa38be29a44e7b3032"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.16/createos-darwin-amd64"
      sha256 "64e36cf21c0a9c4fa616efe51c62de29f2d6b798150271930e2198006b1e0284"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.16/createos-linux-arm64"
      sha256 "5e209871dd6e816223acdf05df8aa4919ded30c32f18dd624d8becb81dcc218d"
    end

    on_intel do
      url "https://github.com/NodeOps-app/createos-cli/releases/download/v0.0.16/createos-linux-amd64"
      sha256 "28da3ce41978dca538db65ab05c349b5ca7c524a73305194617429e56255fb7c"
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
