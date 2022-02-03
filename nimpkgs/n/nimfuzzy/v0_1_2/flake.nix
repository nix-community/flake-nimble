{
  description = ''Fuzzy search wrapper for Nim'';
  inputs.src-nimfuzzy-v0_1_2.flake = false;
  inputs.src-nimfuzzy-v0_1_2.type = "github";
  inputs.src-nimfuzzy-v0_1_2.owner = "genotrance";
  inputs.src-nimfuzzy-v0_1_2.repo = "nimfuzzy";
  inputs.src-nimfuzzy-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-nimfuzzy-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfuzzy-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfuzzy-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}