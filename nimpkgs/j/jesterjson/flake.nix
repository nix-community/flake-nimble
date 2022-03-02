{
  description = ''A Jester web plugin that embeds key information into a JSON object.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."jesterjson-master".type = "github";
  inputs."jesterjson-master".owner = "riinr";
  inputs."jesterjson-master".repo = "flake-nimble";
  inputs."jesterjson-master".ref = "flake-pinning";
  inputs."jesterjson-master".dir = "nimpkgs/j/jesterjson/master";
  inputs."jesterjson-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterjson-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jesterjson-v1_0_1".type = "github";
  inputs."jesterjson-v1_0_1".owner = "riinr";
  inputs."jesterjson-v1_0_1".repo = "flake-nimble";
  inputs."jesterjson-v1_0_1".ref = "flake-pinning";
  inputs."jesterjson-v1_0_1".dir = "nimpkgs/j/jesterjson/v1_0_1";
  inputs."jesterjson-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterjson-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}