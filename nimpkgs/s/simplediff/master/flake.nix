{
  description = ''A library for straightforward diff calculation'';
  inputs.src-simplediff-master.flake = false;
  inputs.src-simplediff-master.type = "other";
  inputs.src-simplediff-master.owner = "~reesmichael1";
  inputs.src-simplediff-master.repo = "nim-simplediff";
  inputs.src-simplediff-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-simplediff-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simplediff-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simplediff-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}