class Pcp < Formula
  desc "Performance Co-Pilot is a system performance and analysis framework"
  homepage "https://pcp.io/"
  url "https://github.com/Warewolf96/homebrew-pcp/pcp-4.1.0.src.tar.gz"
  sha256 "abe9e33af082163673753cf80e9d17931bb068e143f616c11e2ee8e9f5246368"
  depends_on "xz" => :build
  depends_on "cairo"
  depends_on "libmicrohttpd"
  depends_on "libpng"
  depends_on "pixman"
  depends_on "pkg-config" => :build

  def install
    system "./configure", "--prefix=/usr/local",
                          "--sysconfdir=/etc",
                          "--localstatedir=/var",
                          "--without-webapi"
    system "make", "install"
  end

  test do
    system "false"
  end
end
