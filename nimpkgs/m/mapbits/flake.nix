{
  description = ''Access bit mapped portions of bytes in binary data as int variables'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mapbits-master".type = "github";
  inputs."mapbits-master".owner = "riinr";
  inputs."mapbits-master".repo = "flake-nimble";
  inputs."mapbits-master".ref = "flake-pinning";
  inputs."mapbits-master".dir = "nimpkgs/m/mapbits/master";
  inputs."mapbits-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mapbits-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mapbits-1_0".type = "github";
  inputs."mapbits-1_0".owner = "riinr";
  inputs."mapbits-1_0".repo = "flake-nimble";
  inputs."mapbits-1_0".ref = "flake-pinning";
  inputs."mapbits-1_0".dir = "nimpkgs/m/mapbits/1_0";
  inputs."mapbits-1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mapbits-1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}