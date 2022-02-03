{
  description = ''Hashing/Digest collection in pure Nim'';
  inputs.src-shimsham-v0_2_0-alpha.flake = false;
  inputs.src-shimsham-v0_2_0-alpha.type = "github";
  inputs.src-shimsham-v0_2_0-alpha.owner = "apense";
  inputs.src-shimsham-v0_2_0-alpha.repo = "shimsham";
  inputs.src-shimsham-v0_2_0-alpha.ref = "refs/tags/v0.2.0-alpha";
  
  outputs = { self, nixpkgs, src-shimsham-v0_2_0-alpha, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shimsham-v0_2_0-alpha;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shimsham-v0_2_0-alpha"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}