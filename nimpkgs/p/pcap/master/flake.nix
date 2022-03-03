{
  description = ''Tiny pure Nim library to read PCAP files used by TcpDump/WinDump/Wireshark.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pcap-master.flake = false;
  inputs.src-pcap-master.type = "github";
  inputs.src-pcap-master.owner = "PMunch";
  inputs.src-pcap-master.repo = "nim-pcap";
  inputs.src-pcap-master.ref = "refs/heads/master";
  inputs.src-pcap-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pcap-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pcap-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pcap-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}