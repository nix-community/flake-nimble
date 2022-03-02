{
  description = ''Our very personal collection of utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fragments-master".type = "github";
  inputs."fragments-master".owner = "riinr";
  inputs."fragments-master".repo = "flake-nimble";
  inputs."fragments-master".ref = "flake-pinning";
  inputs."fragments-master".dir = "nimpkgs/f/fragments/master";
  inputs."fragments-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}