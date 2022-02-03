{
  description = ''A fixed point number library in pure Nim.'';
  inputs.src-fpn-master.flake = false;
  inputs.src-fpn-master.type = "gitlab";
  inputs.src-fpn-master.owner = "lbartoletti";
  inputs.src-fpn-master.repo = "fpn";
  inputs.src-fpn-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-fpn-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fpn-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fpn-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}