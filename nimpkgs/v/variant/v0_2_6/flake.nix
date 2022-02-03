{
  description = ''Variant type and type matching'';
  inputs.src-variant-v0_2_6.flake = false;
  inputs.src-variant-v0_2_6.type = "github";
  inputs.src-variant-v0_2_6.owner = "yglukhov";
  inputs.src-variant-v0_2_6.repo = "variant";
  inputs.src-variant-v0_2_6.ref = "refs/tags/v0.2.6";
  
  outputs = { self, nixpkgs, src-variant-v0_2_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-variant-v0_2_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-variant-v0_2_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}