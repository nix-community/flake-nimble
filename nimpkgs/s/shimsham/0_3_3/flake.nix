{
  description = ''Hashing/Digest collection in pure Nim'';
  inputs.src-ShimSham-0_3_3.flake = false;
  inputs.src-ShimSham-0_3_3.type = "github";
  inputs.src-ShimSham-0_3_3.owner = "apense";
  inputs.src-ShimSham-0_3_3.repo = "shimsham";
  inputs.src-ShimSham-0_3_3.ref = "refs/tags/0.3.3";
  
  outputs = { self, nixpkgs, src-shimsham-0_3_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shimsham-0_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shimsham-0_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}