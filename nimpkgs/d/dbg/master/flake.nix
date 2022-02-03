{
  description = ''dbg template; in debug echo'';
  inputs.src-dbg-master.flake = false;
  inputs.src-dbg-master.type = "github";
  inputs.src-dbg-master.owner = "enthus1ast";
  inputs.src-dbg-master.repo = "nimDbg";
  inputs.src-dbg-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-dbg-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dbg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dbg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}