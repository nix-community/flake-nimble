{
  description = ''high level simple way to write PNGs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."simplepng-master".type = "github";
  inputs."simplepng-master".owner = "riinr";
  inputs."simplepng-master".repo = "flake-nimble";
  inputs."simplepng-master".ref = "flake-pinning";
  inputs."simplepng-master".dir = "nimpkgs/s/simplepng/master";
  inputs."simplepng-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simplepng-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}