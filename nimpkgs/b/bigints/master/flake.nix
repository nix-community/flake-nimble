{
  description = ''Arbitrary-precision integers'';
  inputs.src-bigints-master.flake = false;
  inputs.src-bigints-master.type = "github";
  inputs.src-bigints-master.owner = "nim-lang";
  inputs.src-bigints-master.repo = "bigints";
  inputs.src-bigints-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-bigints-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bigints-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bigints-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}