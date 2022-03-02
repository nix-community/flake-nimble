{
  description = ''Integrate nim projects in the C++Builder build process'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimcb-master".type = "github";
  inputs."nimcb-master".owner = "riinr";
  inputs."nimcb-master".repo = "flake-nimble";
  inputs."nimcb-master".ref = "flake-pinning";
  inputs."nimcb-master".dir = "nimpkgs/n/nimcb/master";
  inputs."nimcb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}