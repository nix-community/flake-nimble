{
  description = ''important_packages with 0 dependencies and all unittests passing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fision-master".type = "github";
  inputs."fision-master".owner = "riinr";
  inputs."fision-master".repo = "flake-nimble";
  inputs."fision-master".ref = "flake-pinning";
  inputs."fision-master".dir = "nimpkgs/f/fision/master";
  inputs."fision-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fision-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}