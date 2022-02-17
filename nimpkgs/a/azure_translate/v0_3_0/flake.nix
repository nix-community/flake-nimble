{
  description = ''Nim Library for Azure Cognitive Services Translate'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-azure_translate-v0_3_0.flake = false;
  inputs.src-azure_translate-v0_3_0.type = "github";
  inputs.src-azure_translate-v0_3_0.owner = "williamhatcher";
  inputs.src-azure_translate-v0_3_0.repo = "azure_translate";
  inputs.src-azure_translate-v0_3_0.ref = "refs/tags/v0.3.0";
  
  
  inputs."nuuid".type = "github";
  inputs."nuuid".owner = "riinr";
  inputs."nuuid".repo = "flake-nimble";
  inputs."nuuid".ref = "flake-pinning";
  inputs."nuuid".dir = "nimpkgs/n/nuuid";

  outputs = { self, nixpkgs, flakeNimbleLib, src-azure_translate-v0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-azure_translate-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-azure_translate-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}