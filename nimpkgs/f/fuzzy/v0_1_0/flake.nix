{
  description = ''Pure nim fuzzy search implementation. Supports substrings etc'';
  inputs.src-fuzzy-v0_1_0.flake = false;
  inputs.src-fuzzy-v0_1_0.type = "github";
  inputs.src-fuzzy-v0_1_0.owner = "pigmej";
  inputs.src-fuzzy-v0_1_0.repo = "fuzzy";
  inputs.src-fuzzy-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-fuzzy-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fuzzy-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fuzzy-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}