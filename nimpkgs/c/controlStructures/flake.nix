{
  description = ''Additional control structures'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."controlStructures-master".type = "github";
  inputs."controlStructures-master".owner = "riinr";
  inputs."controlStructures-master".repo = "flake-nimble";
  inputs."controlStructures-master".ref = "flake-pinning";
  inputs."controlStructures-master".dir = "nimpkgs/c/controlStructures/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}