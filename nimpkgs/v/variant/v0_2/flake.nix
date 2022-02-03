{
  description = ''Variant type and type matching'';
  inputs.src-variant-v0_2.flake = false;
  inputs.src-variant-v0_2.type = "github";
  inputs.src-variant-v0_2.owner = "yglukhov";
  inputs.src-variant-v0_2.repo = "variant";
  inputs.src-variant-v0_2.ref = "refs/tags/v0.2";
  
  outputs = { self, nixpkgs, src-variant-v0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-variant-v0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-variant-v0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}