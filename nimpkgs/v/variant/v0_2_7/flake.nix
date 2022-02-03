{
  description = ''Variant type and type matching'';
  inputs.src-variant-v0_2_7.flake = false;
  inputs.src-variant-v0_2_7.type = "github";
  inputs.src-variant-v0_2_7.owner = "yglukhov";
  inputs.src-variant-v0_2_7.repo = "variant";
  inputs.src-variant-v0_2_7.ref = "refs/tags/v0.2.7";
  
  outputs = { self, nixpkgs, src-variant-v0_2_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-variant-v0_2_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-variant-v0_2_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}