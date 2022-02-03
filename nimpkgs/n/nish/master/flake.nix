{
  description = ''A Toy Shell Application'';
  inputs.src-nish-master.flake = false;
  inputs.src-nish-master.type = "github";
  inputs.src-nish-master.owner = "owlinux1000";
  inputs.src-nish-master.repo = "nish";
  inputs.src-nish-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nish-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nish-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nish-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}