{
  description = ''A collection of reusable modules and wrappers.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."fowltek-master".type = "github";
  inputs."fowltek-master".owner = "riinr";
  inputs."fowltek-master".repo = "flake-nimble";
  inputs."fowltek-master".ref = "flake-pinning";
  inputs."fowltek-master".dir = "nimpkgs/f/fowltek/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}