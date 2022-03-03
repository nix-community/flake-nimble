{
  description = ''Moss (Measure of Software Similarity) implementation in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."moss_nim-main".type = "github";
  inputs."moss_nim-main".owner = "riinr";
  inputs."moss_nim-main".repo = "flake-nimble";
  inputs."moss_nim-main".ref = "flake-pinning";
  inputs."moss_nim-main".dir = "nimpkgs/m/moss_nim/main";
  inputs."moss_nim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moss_nim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}