{
  description = ''ctrulib wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ctrulib-master".type = "github";
  inputs."ctrulib-master".owner = "riinr";
  inputs."ctrulib-master".repo = "flake-nimble";
  inputs."ctrulib-master".ref = "flake-pinning";
  inputs."ctrulib-master".dir = "nimpkgs/c/ctrulib/master";
  inputs."ctrulib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ctrulib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}