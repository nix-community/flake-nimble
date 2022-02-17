{
  description = ''Nim Library for Azure Cognitive Services Translate'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."azure_translate-master".type = "github";
  inputs."azure_translate-master".owner = "riinr";
  inputs."azure_translate-master".repo = "flake-nimble";
  inputs."azure_translate-master".ref = "flake-pinning";
  inputs."azure_translate-master".dir = "nimpkgs/a/azure_translate/master";

    inputs."azure_translate-v0_3_0".type = "github";
  inputs."azure_translate-v0_3_0".owner = "riinr";
  inputs."azure_translate-v0_3_0".repo = "flake-nimble";
  inputs."azure_translate-v0_3_0".ref = "flake-pinning";
  inputs."azure_translate-v0_3_0".dir = "nimpkgs/a/azure_translate/v0_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}