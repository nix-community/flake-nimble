{
  description = ''Fuzzy search wrapper for Nim'';
  inputs.src-nimfuzzy-v0_1_3.flake = false;
  inputs.src-nimfuzzy-v0_1_3.type = "github";
  inputs.src-nimfuzzy-v0_1_3.owner = "genotrance";
  inputs.src-nimfuzzy-v0_1_3.repo = "nimfuzzy";
  inputs.src-nimfuzzy-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-nimfuzzy-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfuzzy-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfuzzy-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}