{
  description = ''glue code generator to bind Nim and Lua together using Nim's powerful macro'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimlua-master".type = "github";
  inputs."nimlua-master".owner = "riinr";
  inputs."nimlua-master".repo = "flake-nimble";
  inputs."nimlua-master".ref = "flake-pinning";
  inputs."nimlua-master".dir = "nimpkgs/n/nimlua/master";
  inputs."nimlua-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlua-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimlua-v0_3_8".type = "github";
  inputs."nimlua-v0_3_8".owner = "riinr";
  inputs."nimlua-v0_3_8".repo = "flake-nimble";
  inputs."nimlua-v0_3_8".ref = "flake-pinning";
  inputs."nimlua-v0_3_8".dir = "nimpkgs/n/nimlua/v0_3_8";
  inputs."nimlua-v0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlua-v0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}