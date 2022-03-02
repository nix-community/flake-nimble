{
  description = ''String interpolation with printf syntax'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."stringinterpolation-master".type = "github";
  inputs."stringinterpolation-master".owner = "riinr";
  inputs."stringinterpolation-master".repo = "flake-nimble";
  inputs."stringinterpolation-master".ref = "flake-pinning";
  inputs."stringinterpolation-master".dir = "nimpkgs/s/stringinterpolation/master";
  inputs."stringinterpolation-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stringinterpolation-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}