{
  description = ''Fuzzy search wrapper for Nim'';
  inputs.src-nimfuzzy-v0_1_0.flake = false;
  inputs.src-nimfuzzy-v0_1_0.type = "github";
  inputs.src-nimfuzzy-v0_1_0.owner = "genotrance";
  inputs.src-nimfuzzy-v0_1_0.repo = "nimfuzzy";
  inputs.src-nimfuzzy-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-nimfuzzy-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfuzzy-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfuzzy-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}