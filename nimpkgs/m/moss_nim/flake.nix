{
  description = ''Moss (Measure of Software Similarity) implementation in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."moss_nim-main".type = "github";
  inputs."moss_nim-main".owner = "riinr";
  inputs."moss_nim-main".repo = "flake-nimble";
  inputs."moss_nim-main".ref = "flake-pinning";
  inputs."moss_nim-main".dir = "nimpkgs/m/moss_nim/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}