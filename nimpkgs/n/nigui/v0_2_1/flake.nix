{
  description = ''NiGui is a cross-platform, desktop GUI toolkit using native widgets.'';
  inputs.src-nigui-v0_2_1.flake = false;
  inputs.src-nigui-v0_2_1.type = "github";
  inputs.src-nigui-v0_2_1.owner = "trustable-code";
  inputs.src-nigui-v0_2_1.repo = "NiGui";
  inputs.src-nigui-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-nigui-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nigui-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nigui-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}