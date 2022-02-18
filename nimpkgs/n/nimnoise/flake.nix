{
  description = ''A port of libnoise into pure nim, heavily inspired by Libnoise.Unity, but true to the original Libnoise'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimnoise-master".type = "github";
  inputs."nimnoise-master".owner = "riinr";
  inputs."nimnoise-master".repo = "flake-nimble";
  inputs."nimnoise-master".ref = "flake-pinning";
  inputs."nimnoise-master".dir = "nimpkgs/n/nimnoise/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}