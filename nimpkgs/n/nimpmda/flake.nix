{
  description = ''PCP PMDA module bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimpmda-master".type = "github";
  inputs."nimpmda-master".owner = "riinr";
  inputs."nimpmda-master".repo = "flake-nimble";
  inputs."nimpmda-master".ref = "flake-pinning";
  inputs."nimpmda-master".dir = "nimpkgs/n/nimpmda/master";
  inputs."nimpmda-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpmda-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}