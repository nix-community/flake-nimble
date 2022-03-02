{
  description = ''Proton template engine for xml and xhtml files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."proton-master".type = "github";
  inputs."proton-master".owner = "riinr";
  inputs."proton-master".repo = "flake-nimble";
  inputs."proton-master".ref = "flake-pinning";
  inputs."proton-master".dir = "nimpkgs/p/proton/master";
  inputs."proton-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."proton-v0_2_2".type = "github";
  inputs."proton-v0_2_2".owner = "riinr";
  inputs."proton-v0_2_2".repo = "flake-nimble";
  inputs."proton-v0_2_2".ref = "flake-pinning";
  inputs."proton-v0_2_2".dir = "nimpkgs/p/proton/v0_2_2";
  inputs."proton-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."proton-v0_2_3".type = "github";
  inputs."proton-v0_2_3".owner = "riinr";
  inputs."proton-v0_2_3".repo = "flake-nimble";
  inputs."proton-v0_2_3".ref = "flake-pinning";
  inputs."proton-v0_2_3".dir = "nimpkgs/p/proton/v0_2_3";
  inputs."proton-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."proton-v0_2_4".type = "github";
  inputs."proton-v0_2_4".owner = "riinr";
  inputs."proton-v0_2_4".repo = "flake-nimble";
  inputs."proton-v0_2_4".ref = "flake-pinning";
  inputs."proton-v0_2_4".dir = "nimpkgs/p/proton/v0_2_4";
  inputs."proton-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."proton-v0_2_5".type = "github";
  inputs."proton-v0_2_5".owner = "riinr";
  inputs."proton-v0_2_5".repo = "flake-nimble";
  inputs."proton-v0_2_5".ref = "flake-pinning";
  inputs."proton-v0_2_5".dir = "nimpkgs/p/proton/v0_2_5";
  inputs."proton-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."proton-v0_2_6".type = "github";
  inputs."proton-v0_2_6".owner = "riinr";
  inputs."proton-v0_2_6".repo = "flake-nimble";
  inputs."proton-v0_2_6".ref = "flake-pinning";
  inputs."proton-v0_2_6".dir = "nimpkgs/p/proton/v0_2_6";
  inputs."proton-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}