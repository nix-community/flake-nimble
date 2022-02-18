{
  description = ''Additional control structures'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."controlstructures-master".type = "github";
  inputs."controlstructures-master".owner = "riinr";
  inputs."controlstructures-master".repo = "flake-nimble";
  inputs."controlstructures-master".ref = "flake-pinning";
  inputs."controlstructures-master".dir = "nimpkgs/c/controlstructures/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
