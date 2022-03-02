{
  description = ''a general ast pattern matching library with a focus on correctness and good error messages'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ast_pattern_matching-master".type = "github";
  inputs."ast_pattern_matching-master".owner = "riinr";
  inputs."ast_pattern_matching-master".repo = "flake-nimble";
  inputs."ast_pattern_matching-master".ref = "flake-pinning";
  inputs."ast_pattern_matching-master".dir = "nimpkgs/a/ast_pattern_matching/master";
  inputs."ast_pattern_matching-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ast_pattern_matching-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}