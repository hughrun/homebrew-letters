class LetteRs < Formula
  desc "Make static site publishing less painful"
  homepage "https://github.com/hughrun/lette.rs"
  url "https://github.com/hughrun/lette.rs/archive/v1.2.3.tar.gz"
  sha256 "80989d7806fe446eb222b4fbfa8a0019b79196a558cce99cae99c39eb300fa25"
  license "AGPL-3.0-or-later"

  bottle do
    root_url "https://github.com/hughrun/homebrew-letters/releases/download/lette.rs-1.2.3"
    sha256 cellar: :any_skip_relocation, catalina:     "054cb68655fc78ef73df725f02ba9a2f3e3c9e26fd92007cb166f9d675ad5470"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "cd4a6330309309d105caee63875e67441f1104fcb7c62f52e1009e4c8abf5f78"
  end

  depends_on "rust" => :build
  depends_on "openssl"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "You need a config file to do anything!\nLet's set one up...\n", shell_output("letters write")
  end
end
