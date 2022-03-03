{
  description = ''everything  search engine wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimeverything-master".type = "github";
  inputs."nimeverything-master".owner = "riinr";
  inputs."nimeverything-master".repo = "flake-nimble";
  inputs."nimeverything-master".ref = "flake-pinning";
  inputs."nimeverything-master".dir = "nimpkgs/n/nimeverything/master";
  inputs."nimeverything-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimeverything-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}