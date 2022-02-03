{
  description = ''Variant type and type matching'';
  inputs.src-variant-master.flake = false;
  inputs.src-variant-master.type = "github";
  inputs.src-variant-master.owner = "yglukhov";
  inputs.src-variant-master.repo = "variant";
  inputs.src-variant-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-variant-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-variant-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-variant-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}