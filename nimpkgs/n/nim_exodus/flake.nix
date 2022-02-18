{
  description = ''Template generator for gester'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nim_exodus-master".type = "github";
  inputs."nim_exodus-master".owner = "riinr";
  inputs."nim_exodus-master".repo = "flake-nimble";
  inputs."nim_exodus-master".ref = "flake-pinning";
  inputs."nim_exodus-master".dir = "nimpkgs/n/nim_exodus/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}