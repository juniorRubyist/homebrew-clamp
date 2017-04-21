class Clamp < Formula
  desc "command-line tool for local MAMP management"
  homepage "https://jide.github.io/clamp"
  url "https://github.com/jide/clamp.git", :using => :git, :tag => "1.4.1", :revision => "e00bfa908c2b15840600e1f26d08807f4cee0998"

  depends_on "mariadb"

  def install
    inreplace "clamp", %r{/usr/local/clamp}, prefix
    prefix.install Dir["*"]
    bin.install_symlink "../clamp"
  end

  test do
    system bin/"clamp", "help"
  end
end
