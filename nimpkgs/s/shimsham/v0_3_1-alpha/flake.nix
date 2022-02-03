{
  description = ''Hashing/Digest collection in pure Nim'';
  inputs.src-shimsham-v0_3_1-alpha.flake = false;
  inputs.src-shimsham-v0_3_1-alpha.type = "github";
  inputs.src-shimsham-v0_3_1-alpha.owner = "apense";
  inputs.src-shimsham-v0_3_1-alpha.repo = "shimsham";
  inputs.src-shimsham-v0_3_1-alpha.ref = "refs/tags/v0.3.1-alpha";
  
  outputs = { self, nixpkgs, src-shimsham-v0_3_1-alpha, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shimsham-v0_3_1-alpha;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shimsham-v0_3_1-alpha"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}