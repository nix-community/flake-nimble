{
  description = ''Hashing/Digest collection in pure Nim'';
  inputs.src-ShimSham-0_3_4.flake = false;
  inputs.src-ShimSham-0_3_4.type = "github";
  inputs.src-ShimSham-0_3_4.owner = "apense";
  inputs.src-ShimSham-0_3_4.repo = "shimsham";
  inputs.src-ShimSham-0_3_4.ref = "refs/tags/0.3.4";
  
  outputs = { self, nixpkgs, src-shimsham-0_3_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shimsham-0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shimsham-0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}