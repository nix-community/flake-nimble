{
  description = ''Nim term rewriting system'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimtrs-master".type = "github";
  inputs."nimtrs-master".owner = "riinr";
  inputs."nimtrs-master".repo = "flake-nimble";
  inputs."nimtrs-master".ref = "flake-pinning";
  inputs."nimtrs-master".dir = "nimpkgs/n/nimtrs/master";
  inputs."nimtrs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtrs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}