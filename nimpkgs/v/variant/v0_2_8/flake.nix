{
  description = ''Variant type and type matching'';
  inputs.src-variant-v0_2_8.flake = false;
  inputs.src-variant-v0_2_8.type = "github";
  inputs.src-variant-v0_2_8.owner = "yglukhov";
  inputs.src-variant-v0_2_8.repo = "variant";
  inputs.src-variant-v0_2_8.ref = "refs/tags/v0.2.8";
  
  outputs = { self, nixpkgs, src-variant-v0_2_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-variant-v0_2_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-variant-v0_2_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}