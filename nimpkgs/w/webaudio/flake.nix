{
  description = ''API for Web Audio (JS)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."webaudio-master".type = "github";
  inputs."webaudio-master".owner = "riinr";
  inputs."webaudio-master".repo = "flake-nimble";
  inputs."webaudio-master".ref = "flake-pinning";
  inputs."webaudio-master".dir = "nimpkgs/w/webaudio/master";
  inputs."webaudio-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webaudio-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}