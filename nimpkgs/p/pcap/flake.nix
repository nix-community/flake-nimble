{
  description = ''Tiny pure Nim library to read PCAP files used by TcpDump/WinDump/Wireshark.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."pcap-master".type = "github";
  inputs."pcap-master".owner = "riinr";
  inputs."pcap-master".repo = "flake-nimble";
  inputs."pcap-master".ref = "flake-pinning";
  inputs."pcap-master".dir = "nimpkgs/p/pcap/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}