# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
 class Harminv < Formula
  desc "harmonic inversion algorithm of Mandelshtam: decompose signal into sum of decaying sinusoids"
  homepage "https://github.com/stevengj/harminv/blob/master/README.md"
  url "https://github.com/stevengj/harminv/releases/download/v1.4.1/harminv-1.4.1.tar.gz"
  sha256 "e1b923c508a565f230aac04e3feea23b888b47d8e19b08816a97ee4444233670"

   depends_on "gcc"
   depends_on "openblas"
   depends_on "lapack"

   def install
    # ENV.deparallelize  # if your formula fails when building in parallel
     # Remove unrecognized options if warned by configure
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--enable-shared",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end
end
