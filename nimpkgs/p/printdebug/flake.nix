{
  description = ''Print Debug for Nim, tiny 3 lines Lib, C Target'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."printdebug-master".type = "github";
  inputs."printdebug-master".owner = "riinr";
  inputs."printdebug-master".repo = "flake-nimble";
  inputs."printdebug-master".ref = "flake-pinning";
  inputs."printdebug-master".dir = "nimpkgs/p/printdebug/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}