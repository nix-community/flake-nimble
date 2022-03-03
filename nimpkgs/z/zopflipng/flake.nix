{
  description = ''zopflipng-like png optimization'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."zopflipng-master".type = "github";
  inputs."zopflipng-master".owner = "riinr";
  inputs."zopflipng-master".repo = "flake-nimble";
  inputs."zopflipng-master".ref = "flake-pinning";
  inputs."zopflipng-master".dir = "nimpkgs/z/zopflipng/master";
  inputs."zopflipng-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zopflipng-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zopflipng-v0_1_3".type = "github";
  inputs."zopflipng-v0_1_3".owner = "riinr";
  inputs."zopflipng-v0_1_3".repo = "flake-nimble";
  inputs."zopflipng-v0_1_3".ref = "flake-pinning";
  inputs."zopflipng-v0_1_3".dir = "nimpkgs/z/zopflipng/v0_1_3";
  inputs."zopflipng-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zopflipng-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zopflipng-v0_1_4".type = "github";
  inputs."zopflipng-v0_1_4".owner = "riinr";
  inputs."zopflipng-v0_1_4".repo = "flake-nimble";
  inputs."zopflipng-v0_1_4".ref = "flake-pinning";
  inputs."zopflipng-v0_1_4".dir = "nimpkgs/z/zopflipng/v0_1_4";
  inputs."zopflipng-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zopflipng-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}