{
  description = ''Terse and composable error handling.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sugerror-master".type = "github";
  inputs."sugerror-master".owner = "riinr";
  inputs."sugerror-master".repo = "flake-nimble";
  inputs."sugerror-master".ref = "flake-pinning";
  inputs."sugerror-master".dir = "nimpkgs/s/sugerror/master";
  inputs."sugerror-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sugerror-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}