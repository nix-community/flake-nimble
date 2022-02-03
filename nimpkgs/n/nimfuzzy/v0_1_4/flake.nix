{
  description = ''Fuzzy search wrapper for Nim'';
  inputs.src-nimfuzzy-v0_1_4.flake = false;
  inputs.src-nimfuzzy-v0_1_4.type = "github";
  inputs.src-nimfuzzy-v0_1_4.owner = "genotrance";
  inputs.src-nimfuzzy-v0_1_4.repo = "nimfuzzy";
  inputs.src-nimfuzzy-v0_1_4.ref = "refs/tags/v0.1.4";
  
  outputs = { self, nixpkgs, src-nimfuzzy-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfuzzy-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfuzzy-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}