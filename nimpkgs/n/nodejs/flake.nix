{
  description = ''NodeJS Standard Library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nodejs-main".type = "github";
  inputs."nodejs-main".owner = "riinr";
  inputs."nodejs-main".repo = "flake-nimble";
  inputs."nodejs-main".ref = "flake-pinning";
  inputs."nodejs-main".dir = "nimpkgs/n/nodejs/main";
  inputs."nodejs-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodejs-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}