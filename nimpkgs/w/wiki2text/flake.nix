{
  description = ''Quickly extracts natural-language text from a MediaWiki XML file.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."wiki2text-master".type = "github";
  inputs."wiki2text-master".owner = "riinr";
  inputs."wiki2text-master".repo = "flake-nimble";
  inputs."wiki2text-master".ref = "flake-pinning";
  inputs."wiki2text-master".dir = "nimpkgs/w/wiki2text/master";
  inputs."wiki2text-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wiki2text-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wiki2text-v0_1".type = "github";
  inputs."wiki2text-v0_1".owner = "riinr";
  inputs."wiki2text-v0_1".repo = "flake-nimble";
  inputs."wiki2text-v0_1".ref = "flake-pinning";
  inputs."wiki2text-v0_1".dir = "nimpkgs/w/wiki2text/v0_1";
  inputs."wiki2text-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wiki2text-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wiki2text-v0_2".type = "github";
  inputs."wiki2text-v0_2".owner = "riinr";
  inputs."wiki2text-v0_2".repo = "flake-nimble";
  inputs."wiki2text-v0_2".ref = "flake-pinning";
  inputs."wiki2text-v0_2".dir = "nimpkgs/w/wiki2text/v0_2";
  inputs."wiki2text-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wiki2text-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wiki2text-v0_2_1".type = "github";
  inputs."wiki2text-v0_2_1".owner = "riinr";
  inputs."wiki2text-v0_2_1".repo = "flake-nimble";
  inputs."wiki2text-v0_2_1".ref = "flake-pinning";
  inputs."wiki2text-v0_2_1".dir = "nimpkgs/w/wiki2text/v0_2_1";
  inputs."wiki2text-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wiki2text-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}