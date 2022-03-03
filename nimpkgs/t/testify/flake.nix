{
  description = ''File-based unit testing system'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."testify-master".type = "github";
  inputs."testify-master".owner = "riinr";
  inputs."testify-master".repo = "flake-nimble";
  inputs."testify-master".ref = "flake-pinning";
  inputs."testify-master".dir = "nimpkgs/t/testify/master";
  inputs."testify-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testify-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}