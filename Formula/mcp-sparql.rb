# Generated with JReleaser 1.23.0 at 2026-03-20T22:10:51.946137967Z

class McpSparql < Formula
  desc "MCP server to query SPARQL servers"
  homepage "https://github.com/kludgeworks/mcp-server-rdf"
  version "0.2.5"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.2.5/sparql-mcp-0.2.5-linux-aarch64.zip"
    sha256 "1f4aaec6ff46f033d8ec46ba8fb7f60a41a0e3740bc6986c212ee77a86ace26b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.2.5/sparql-mcp-0.2.5-linux-x64.zip"
    sha256 "16ac5262aa4cc9f989e26667a549b7db7a9b384682b2800844d22c87e4957f7f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.2.5/sparql-mcp-0.2.5-osx-aarch64.zip"
    sha256 "361a7d002725b38eadbeb6b8de6d618523f294aa32c6f6438b3d29fadbfdfc9f"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sparql-mcp" => "sparql-mcp"
  end

  test do
    output = shell_output("#{bin}/sparql-mcp --version")
    assert_match "0.2.5", output
  end
end
