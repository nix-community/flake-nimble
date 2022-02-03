{
  description = ''Nim Library for Azure Cognitive Services Translate'';
  inputs.src-azure_translate-master.flake = false;
  inputs.src-azure_translate-master.type = "github";
  inputs.src-azure_translate-master.owner = "williamhatcher";
  inputs.src-azure_translate-master.repo = "azure_translate";
  inputs.src-azure_translate-master.ref = "refs/heads/master";
  
  
  inputs."nuuid".url = "path:../../../n/nuuid";
  inputs."nuuid".type = "github";
  inputs."nuuid".owner = "riinr";
  inputs."nuuid".repo = "flake-nimble";
  inputs."nuuid".ref = "flake-pinning";
  inputs."nuuid".dir = "nimpkgs/n/nuuid";

  outputs = { self, nixpkgs, src-azure_translate-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-azure_translate-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-azure_translate-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}