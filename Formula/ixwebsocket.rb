class Ixwebsocket < Formula
  desc "WebSocket client and server, and HTTP client command-line tool"
  homepage "https://github.com/machinezone/IXWebSocket"

  url "https://github.com/machinezone/IXWebSocket/archive/v1.3.0.tar.gz"
  sha256 "25c6f9de76d46dff4b152821adffd2c85c56f94e216de6f154e8168b5192de9a"
  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "#{bin}/ws", "--help"
    system "#{bin}/ws", "send", "--help"
    system "#{bin}/ws", "receive", "--help"
    system "#{bin}/ws", "transfer", "--help"
    system "#{bin}/ws", "curl", "--help"
  end
end
