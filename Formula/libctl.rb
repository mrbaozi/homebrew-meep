# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
 class Libctl < Formula
  desc "Guile-based library implementing flexible control files for scientific simulations"
  homepage "https://github.com/stevengj/libctl"
  url "https://github.com/stevengj/libctl/releases/download/v4.0.0/libctl-4.0.0.tar.gz"
  sha256 "b0f46ed29acd13be542a4988d7f0604b10869d6b4c41916c539dc99711fb5458"

  depends_on "gcc"
  depends_on "guile@2.0.11"

  def install
      system "./configure", "--disable-debug",
          "--disable-dependency-tracking",
          "--disable-silent-rules",
          "--enable-shared",
          "--prefix=#{prefix}"
      system "make", "install" # if this fails, try separate make/make install steps
  end
end
