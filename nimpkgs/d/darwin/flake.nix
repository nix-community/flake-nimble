{
  description = ''Bindings to MacOS and iOS frameworks'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."darwin-master".type = "github";
  inputs."darwin-master".owner = "riinr";
  inputs."darwin-master".repo = "flake-nimble";
  inputs."darwin-master".ref = "flake-pinning";
  inputs."darwin-master".dir = "nimpkgs/d/darwin/master";
  inputs."darwin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."darwin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}