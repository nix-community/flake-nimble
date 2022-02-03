{
  description = ''Once provides a type that will enforce that a callback is invoked only once.'';
  inputs.src-once-master.flake = false;
  inputs.src-once-master.type = "other";
  inputs.src-once-master.owner = "~euantorano";
  inputs.src-once-master.repo = "once.nim";
  inputs.src-once-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-once-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-once-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-once-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}