{
  description = ''Wrapper for linenoise, a free, self-contained alternative to GNU readline.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."linenoise-master".type = "github";
  inputs."linenoise-master".owner = "riinr";
  inputs."linenoise-master".repo = "flake-nimble";
  inputs."linenoise-master".ref = "flake-pinning";
  inputs."linenoise-master".dir = "nimpkgs/l/linenoise/master";
  inputs."linenoise-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linenoise-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."linenoise-v0_1_0".type = "github";
  inputs."linenoise-v0_1_0".owner = "riinr";
  inputs."linenoise-v0_1_0".repo = "flake-nimble";
  inputs."linenoise-v0_1_0".ref = "flake-pinning";
  inputs."linenoise-v0_1_0".dir = "nimpkgs/l/linenoise/v0_1_0";
  inputs."linenoise-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linenoise-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}