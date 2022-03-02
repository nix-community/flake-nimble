{
  description = ''High level wrapper for build nginx module w/ nginx-c-function'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ngxcmod-master".type = "github";
  inputs."ngxcmod-master".owner = "riinr";
  inputs."ngxcmod-master".repo = "flake-nimble";
  inputs."ngxcmod-master".ref = "flake-pinning";
  inputs."ngxcmod-master".dir = "nimpkgs/n/ngxcmod/master";
  inputs."ngxcmod-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ngxcmod-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ngxcmod-0_1_2".type = "github";
  inputs."ngxcmod-0_1_2".owner = "riinr";
  inputs."ngxcmod-0_1_2".repo = "flake-nimble";
  inputs."ngxcmod-0_1_2".ref = "flake-pinning";
  inputs."ngxcmod-0_1_2".dir = "nimpkgs/n/ngxcmod/0_1_2";
  inputs."ngxcmod-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ngxcmod-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}