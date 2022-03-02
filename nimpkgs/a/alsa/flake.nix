{
  description = ''NIM bindings for ALSA-LIB c library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."alsa-master".type = "github";
  inputs."alsa-master".owner = "riinr";
  inputs."alsa-master".repo = "flake-nimble";
  inputs."alsa-master".ref = "flake-pinning";
  inputs."alsa-master".dir = "nimpkgs/a/alsa/master";
  inputs."alsa-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alsa-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}