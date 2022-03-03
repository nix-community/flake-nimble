{
  description = ''PROXY Protocol enabler for aged programs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."proxyproto-master".type = "github";
  inputs."proxyproto-master".owner = "riinr";
  inputs."proxyproto-master".repo = "flake-nimble";
  inputs."proxyproto-master".ref = "flake-pinning";
  inputs."proxyproto-master".dir = "nimpkgs/p/proxyproto/master";
  inputs."proxyproto-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proxyproto-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."proxyproto-0_1_0".type = "github";
  inputs."proxyproto-0_1_0".owner = "riinr";
  inputs."proxyproto-0_1_0".repo = "flake-nimble";
  inputs."proxyproto-0_1_0".ref = "flake-pinning";
  inputs."proxyproto-0_1_0".dir = "nimpkgs/p/proxyproto/0_1_0";
  inputs."proxyproto-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proxyproto-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."proxyproto-0_1_1".type = "github";
  inputs."proxyproto-0_1_1".owner = "riinr";
  inputs."proxyproto-0_1_1".repo = "flake-nimble";
  inputs."proxyproto-0_1_1".ref = "flake-pinning";
  inputs."proxyproto-0_1_1".dir = "nimpkgs/p/proxyproto/0_1_1";
  inputs."proxyproto-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proxyproto-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}