# Generated with JReleaser 1.26.0 at 2026-09-23T22:32:10.393077825Z

class SparqlMcp < Formula
  desc "MCP server to query SPARQL servers"
  homepage "https://github.com/kludgeworks/mcp-server-rdf"
  version "0.3.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.3.0/sparql-mcp-0.3.0-linux-aarch64.zip"
    sha256 "4394e52f6206e2a0bd44a3f98646db0da9e21be81a0b9e5a2cdb2258e1f18f81"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.3.0/sparql-mcp-0.3.0-linux-x64.zip"
    sha256 "2bfd5d5e2105e63b5ef7f60df3e8fd7865623a85e57335ea049de852c77b4142"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.3.0/sparql-mcp-0.3.0-osx-aarch64.zip"
    sha256 "f8c05b5cb34923ee33638805578e064d214cb63dbc89508f674f9b602514900c"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sparql-mcp" => "sparql-mcp"
  end

  test do
    output = shell_output("#{bin}/sparql-mcp --version")
    assert_match "0.3.0", output
  end
end
