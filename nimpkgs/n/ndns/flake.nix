{
  description = ''A pure Nim Domain Name System (DNS) client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ndns-main".type = "github";
  inputs."ndns-main".owner = "riinr";
  inputs."ndns-main".repo = "flake-nimble";
  inputs."ndns-main".ref = "flake-pinning";
  inputs."ndns-main".dir = "nimpkgs/n/ndns/main";
  inputs."ndns-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndns-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}