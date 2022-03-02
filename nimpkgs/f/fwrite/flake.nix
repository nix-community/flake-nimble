{
  description = ''Create files of the desired size'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fwrite-master".type = "github";
  inputs."fwrite-master".owner = "riinr";
  inputs."fwrite-master".repo = "flake-nimble";
  inputs."fwrite-master".ref = "flake-pinning";
  inputs."fwrite-master".dir = "nimpkgs/f/fwrite/master";
  inputs."fwrite-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fwrite-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fwrite-v1_0_0".type = "github";
  inputs."fwrite-v1_0_0".owner = "riinr";
  inputs."fwrite-v1_0_0".repo = "flake-nimble";
  inputs."fwrite-v1_0_0".ref = "flake-pinning";
  inputs."fwrite-v1_0_0".dir = "nimpkgs/f/fwrite/v1_0_0";
  inputs."fwrite-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fwrite-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}