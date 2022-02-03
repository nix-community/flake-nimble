{
  description = ''Variant type and type matching'';
  inputs.src-variant-v0_2_9.flake = false;
  inputs.src-variant-v0_2_9.type = "github";
  inputs.src-variant-v0_2_9.owner = "yglukhov";
  inputs.src-variant-v0_2_9.repo = "variant";
  inputs.src-variant-v0_2_9.ref = "refs/tags/v0.2.9";
  
  outputs = { self, nixpkgs, src-variant-v0_2_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-variant-v0_2_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-variant-v0_2_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}