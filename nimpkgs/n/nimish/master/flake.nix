{
  description = ''C macro for Nim.'';
  inputs.src-nimish-master.flake = false;
  inputs.src-nimish-master.type = "github";
  inputs.src-nimish-master.owner = "xflywind";
  inputs.src-nimish-master.repo = "nimish";
  inputs.src-nimish-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimish-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimish-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimish-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}