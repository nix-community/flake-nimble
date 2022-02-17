{
  description = ''Nim Library for Azure Cognitive Services Translate'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-azure_translate-master.flake = false;
  inputs.src-azure_translate-master.type = "github";
  inputs.src-azure_translate-master.owner = "williamhatcher";
  inputs.src-azure_translate-master.repo = "azure_translate";
  inputs.src-azure_translate-master.ref = "refs/heads/master";
  
  
  inputs."nuuid".type = "github";
  inputs."nuuid".owner = "riinr";
  inputs."nuuid".repo = "flake-nimble";
  inputs."nuuid".ref = "flake-pinning";
  inputs."nuuid".dir = "nimpkgs/n/nuuid";

  outputs = { self, nixpkgs, flakeNimbleLib, src-azure_translate-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-azure_translate-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-azure_translate-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}