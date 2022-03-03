{
  description = ''Domain Name System (DNS) protocol for Nim programming language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."dnsprotocol-main".type = "github";
  inputs."dnsprotocol-main".owner = "riinr";
  inputs."dnsprotocol-main".repo = "flake-nimble";
  inputs."dnsprotocol-main".ref = "flake-pinning";
  inputs."dnsprotocol-main".dir = "nimpkgs/d/dnsprotocol/main";
  inputs."dnsprotocol-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsprotocol-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}