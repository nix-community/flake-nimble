{
  description = ''Variant type and type matching'';
  inputs.src-variant-v0_2_11.flake = false;
  inputs.src-variant-v0_2_11.type = "github";
  inputs.src-variant-v0_2_11.owner = "yglukhov";
  inputs.src-variant-v0_2_11.repo = "variant";
  inputs.src-variant-v0_2_11.ref = "refs/tags/v0.2.11";
  
  outputs = { self, nixpkgs, src-variant-v0_2_11, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-variant-v0_2_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-variant-v0_2_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}