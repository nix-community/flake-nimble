{
  description = ''Create HyperText with Nim.'';
  inputs.src-hyperscript-master.flake = false;
  inputs.src-hyperscript-master.type = "github";
  inputs.src-hyperscript-master.owner = "schneiderfelipe";
  inputs.src-hyperscript-master.repo = "hyperscript";
  inputs.src-hyperscript-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-hyperscript-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hyperscript-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hyperscript-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}