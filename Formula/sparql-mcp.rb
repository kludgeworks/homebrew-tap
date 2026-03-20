# Generated with JReleaser 1.23.0 at 2026-03-20T21:45:06.480523787Z

class SparqlMcp < Formula
  desc "MCP server to query SPARQL servers"
  homepage "https://github.com/kludgeworks/mcp-server-rdf"
  version "0.2.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.2.3/sparql-mcp-0.2.3-linux-aarch64.zip"
    sha256 "c6625ced18b1b654e5b147bfdd939c515dce88e9f28abfc6bf95692a2ff4345d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.2.3/sparql-mcp-0.2.3-linux-x64.zip"
    sha256 "4c23fc5176c6bf61165e957d5907f15527830e5a63bbea01da83012b2e62429a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kludgeworks/mcp-server-rdf/releases/download/v0.2.3/sparql-mcp-0.2.3-osx-aarch64.zip"
    sha256 "2e0403d9c7c324719573a29840690f4cd1b99655270ebc0f71adff521eca30f5"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sparql-mcp" => "sparql-mcp"
  end

  test do
    output = shell_output("#{bin}/sparql-mcp --version")
    assert_match "0.2.3", output
  end
end
