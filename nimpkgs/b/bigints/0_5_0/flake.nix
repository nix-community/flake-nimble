{
  description = ''Arbitrary-precision integers'';
  inputs.src-bigints-0_5_0.flake = false;
  inputs.src-bigints-0_5_0.type = "github";
  inputs.src-bigints-0_5_0.owner = "nim-lang";
  inputs.src-bigints-0_5_0.repo = "bigints";
  inputs.src-bigints-0_5_0.ref = "refs/tags/0.5.0";
  
  outputs = { self, nixpkgs, src-bigints-0_5_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bigints-0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bigints-0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}