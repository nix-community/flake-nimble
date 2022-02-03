{
  description = ''A fixed point number library in pure Nim.'';
  inputs.src-fpn-v0_1_0.flake = false;
  inputs.src-fpn-v0_1_0.type = "gitlab";
  inputs.src-fpn-v0_1_0.owner = "lbartoletti";
  inputs.src-fpn-v0_1_0.repo = "fpn";
  inputs.src-fpn-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-fpn-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fpn-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fpn-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}