class LetteRs < Formula
  desc "Make static site publishing less painful"
  homepage "https://github.com/hughrun/lette.rs"
  url "https://github.com/hughrun/lette.rs/archive/v1.2.3.tar.gz"
  sha256 "80989d7806fe446eb222b4fbfa8a0019b79196a558cce99cae99c39eb300fa25"
  license "AGPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lette.rs 1.2.3", shell_output("letters --version")
  end
end
