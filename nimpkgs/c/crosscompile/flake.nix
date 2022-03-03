{
  description = ''Crosscompile Nim source code into multiple targets on Linux with this proc.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."crosscompile-master".type = "github";
  inputs."crosscompile-master".owner = "riinr";
  inputs."crosscompile-master".repo = "flake-nimble";
  inputs."crosscompile-master".ref = "flake-pinning";
  inputs."crosscompile-master".dir = "nimpkgs/c/crosscompile/master";
  inputs."crosscompile-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crosscompile-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}