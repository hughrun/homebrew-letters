class LetteRs < Formula
  desc "Make static site publishing less painful"
  homepage "https://github.com/hughrun/lette.rs"
  url "https://github.com/hughrun/lette.rs/archive/v1.2.3.tar.gz"
  sha256 "80989d7806fe446eb222b4fbfa8a0019b79196a558cce99cae99c39eb300fa25"
  license "AGPL-3.0-or-later"

  depends_on "rust" => :build
  depends_on "openssl"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "You need a config file to do anything!\nLet's set one up...\n", shell_output("letters write")
  end
end
