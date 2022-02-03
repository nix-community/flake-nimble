{
  description = ''Hashing/Digest collection in pure Nim'';
  inputs.src-shimsham-0_0_1.flake = false;
  inputs.src-shimsham-0_0_1.type = "github";
  inputs.src-shimsham-0_0_1.owner = "apense";
  inputs.src-shimsham-0_0_1.repo = "shimsham";
  inputs.src-shimsham-0_0_1.ref = "refs/tags/0.0.1";
  
  outputs = { self, nixpkgs, src-shimsham-0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shimsham-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shimsham-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}