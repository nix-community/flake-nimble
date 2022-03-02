{
  description = ''pure Ini configurations parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."configparser-master".type = "github";
  inputs."configparser-master".owner = "riinr";
  inputs."configparser-master".repo = "flake-nimble";
  inputs."configparser-master".ref = "flake-pinning";
  inputs."configparser-master".dir = "nimpkgs/c/configparser/master";
  inputs."configparser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."configparser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}