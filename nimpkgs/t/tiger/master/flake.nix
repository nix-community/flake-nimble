{
  description = ''Tiger hash function'';
  inputs.src-tiger-master.flake = false;
  inputs.src-tiger-master.type = "other";
  inputs.src-tiger-master.owner = "~ehmry";
  inputs.src-tiger-master.repo = "nim_tiger";
  inputs.src-tiger-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-tiger-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tiger-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tiger-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}