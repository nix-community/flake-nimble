{
  description = ''Nim Library for Azure Cognitive Services Translate'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."azure_translate-master".type = "github";
  inputs."azure_translate-master".owner = "riinr";
  inputs."azure_translate-master".repo = "flake-nimble";
  inputs."azure_translate-master".ref = "flake-pinning";
  inputs."azure_translate-master".dir = "nimpkgs/a/azure_translate/master";
  inputs."azure_translate-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."azure_translate-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."azure_translate-v0_3_0".type = "github";
  inputs."azure_translate-v0_3_0".owner = "riinr";
  inputs."azure_translate-v0_3_0".repo = "flake-nimble";
  inputs."azure_translate-v0_3_0".ref = "flake-pinning";
  inputs."azure_translate-v0_3_0".dir = "nimpkgs/a/azure_translate/v0_3_0";
  inputs."azure_translate-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."azure_translate-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}