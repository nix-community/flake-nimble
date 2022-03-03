{
  description = ''Library for splitting a string into shell words'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."shlex-master".type = "github";
  inputs."shlex-master".owner = "riinr";
  inputs."shlex-master".repo = "flake-nimble";
  inputs."shlex-master".ref = "flake-pinning";
  inputs."shlex-master".dir = "nimpkgs/s/shlex/master";
  inputs."shlex-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shlex-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."shlex-v0_1_0".type = "github";
  inputs."shlex-v0_1_0".owner = "riinr";
  inputs."shlex-v0_1_0".repo = "flake-nimble";
  inputs."shlex-v0_1_0".ref = "flake-pinning";
  inputs."shlex-v0_1_0".dir = "nimpkgs/s/shlex/v0_1_0";
  inputs."shlex-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shlex-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}