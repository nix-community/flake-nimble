{
  description = ''Transform latin letters to runes & vice versa. Four runic dialects available.'';
  inputs.src-riimut-v1_0_0.flake = false;
  inputs.src-riimut-v1_0_0.type = "github";
  inputs.src-riimut-v1_0_0.owner = "stscoundrel";
  inputs.src-riimut-v1_0_0.repo = "riimut-nim";
  inputs.src-riimut-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-riimut-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-riimut-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-riimut-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}