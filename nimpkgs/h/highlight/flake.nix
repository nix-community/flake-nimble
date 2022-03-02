{
  description = ''Tool/Lib to highlight text in CLI by using regular expressions.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."highlight-master".type = "github";
  inputs."highlight-master".owner = "riinr";
  inputs."highlight-master".repo = "flake-nimble";
  inputs."highlight-master".ref = "flake-pinning";
  inputs."highlight-master".dir = "nimpkgs/h/highlight/master";
  inputs."highlight-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."highlight-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."highlight-v0_1_0".type = "github";
  inputs."highlight-v0_1_0".owner = "riinr";
  inputs."highlight-v0_1_0".repo = "flake-nimble";
  inputs."highlight-v0_1_0".ref = "flake-pinning";
  inputs."highlight-v0_1_0".dir = "nimpkgs/h/highlight/v0_1_0";
  inputs."highlight-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."highlight-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}