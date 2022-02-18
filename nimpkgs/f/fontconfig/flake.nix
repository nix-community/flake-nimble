{
  description = ''Low level wrapper for the fontconfig library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."fontconfig-master".type = "github";
  inputs."fontconfig-master".owner = "riinr";
  inputs."fontconfig-master".repo = "flake-nimble";
  inputs."fontconfig-master".ref = "flake-pinning";
  inputs."fontconfig-master".dir = "nimpkgs/f/fontconfig/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}