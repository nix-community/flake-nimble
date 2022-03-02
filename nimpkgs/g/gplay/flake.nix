{
  description = ''Google Play APK Uploader'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gplay-master".type = "github";
  inputs."gplay-master".owner = "riinr";
  inputs."gplay-master".repo = "flake-nimble";
  inputs."gplay-master".ref = "flake-pinning";
  inputs."gplay-master".dir = "nimpkgs/g/gplay/master";
  inputs."gplay-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gplay-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}