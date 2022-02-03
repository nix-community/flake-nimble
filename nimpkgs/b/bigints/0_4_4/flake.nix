{
  description = ''Arbitrary-precision integers'';
  inputs.src-bigints-0_4_4.flake = false;
  inputs.src-bigints-0_4_4.type = "github";
  inputs.src-bigints-0_4_4.owner = "nim-lang";
  inputs.src-bigints-0_4_4.repo = "bigints";
  inputs.src-bigints-0_4_4.ref = "refs/tags/0.4.4";
  
  outputs = { self, nixpkgs, src-bigints-0_4_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bigints-0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bigints-0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}