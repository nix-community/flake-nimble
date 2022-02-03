{
  description = ''A fixed point number library in pure Nim.'';
  inputs.src-fpn-v0_0_1.flake = false;
  inputs.src-fpn-v0_0_1.type = "gitlab";
  inputs.src-fpn-v0_0_1.owner = "lbartoletti";
  inputs.src-fpn-v0_0_1.repo = "fpn";
  inputs.src-fpn-v0_0_1.ref = "refs/tags/v0.0.1";
  
  outputs = { self, nixpkgs, src-fpn-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fpn-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fpn-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}