{
  description = ''packedjson is an alternative Nim implementation for JSON. The JSON is essentially kept as a single string in order to save memory over a more traditional tree representation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."packedjson-master".type = "github";
  inputs."packedjson-master".owner = "riinr";
  inputs."packedjson-master".repo = "flake-nimble";
  inputs."packedjson-master".ref = "flake-pinning";
  inputs."packedjson-master".dir = "nimpkgs/p/packedjson/master";
  inputs."packedjson-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."packedjson-0_1_0".type = "github";
  inputs."packedjson-0_1_0".owner = "riinr";
  inputs."packedjson-0_1_0".repo = "flake-nimble";
  inputs."packedjson-0_1_0".ref = "flake-pinning";
  inputs."packedjson-0_1_0".dir = "nimpkgs/p/packedjson/0_1_0";
  inputs."packedjson-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."packedjson-0_2_1".type = "github";
  inputs."packedjson-0_2_1".owner = "riinr";
  inputs."packedjson-0_2_1".repo = "flake-nimble";
  inputs."packedjson-0_2_1".ref = "flake-pinning";
  inputs."packedjson-0_2_1".dir = "nimpkgs/p/packedjson/0_2_1";
  inputs."packedjson-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."packedjson-0_2_2".type = "github";
  inputs."packedjson-0_2_2".owner = "riinr";
  inputs."packedjson-0_2_2".repo = "flake-nimble";
  inputs."packedjson-0_2_2".ref = "flake-pinning";
  inputs."packedjson-0_2_2".dir = "nimpkgs/p/packedjson/0_2_2";
  inputs."packedjson-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}