# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
 class Meep < Formula
  desc "free finite-difference time-domain (FDTD) software for electromagnetic simulations"
  homepage "https://meep.readthedocs.io/en/latest/"
  url "https://github.com/stevengj/meep/releases/download/v1.4.3/meep-1.4.3.tar.gz"
  sha256 "1105b369c3f7f4aae0de62e933e49f4e3c94b8031a7eb39e2ee315d4cea46b02"

  depends_on "libctl"
  depends_on "mpb"
  depends_on "harminv"
  depends_on "hdf5"
  depends_on "lapack"
  depends_on "openblas"
  depends_on "guile"
  depends_on "open-mpi"
  depends_on "h5utils"

  def install
    args = [
        "--disable-debug",
        "--disable-dependency-tracking",
        "--disable-silent-rules",
        "--enable-shared",
        "--with-mpi",
        "PYTHON=python3",
        "--prefix=#{prefix}"
    ]
    system "./configure", *args
    system "make", "install" # if this fails, try separate make/make install steps
  end
end
