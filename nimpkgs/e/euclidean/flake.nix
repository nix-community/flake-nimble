{
  description = ''Euclidean Division & Euclidean Modulo'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."euclidean-master".type = "github";
  inputs."euclidean-master".owner = "riinr";
  inputs."euclidean-master".repo = "flake-nimble";
  inputs."euclidean-master".ref = "flake-pinning";
  inputs."euclidean-master".dir = "nimpkgs/e/euclidean/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}