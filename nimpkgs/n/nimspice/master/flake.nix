{
  description = ''A bunch of macros. sugar if you would'';
  inputs.src-nimspice-master.flake = false;
  inputs.src-nimspice-master.type = "github";
  inputs.src-nimspice-master.owner = "CodeDoes";
  inputs.src-nimspice-master.repo = "nimspice";
  inputs.src-nimspice-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimspice-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimspice-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimspice-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}