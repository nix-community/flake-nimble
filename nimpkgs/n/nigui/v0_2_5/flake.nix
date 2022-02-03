{
  description = ''NiGui is a cross-platform, desktop GUI toolkit using native widgets.'';
  inputs.src-nigui-v0_2_5.flake = false;
  inputs.src-nigui-v0_2_5.type = "github";
  inputs.src-nigui-v0_2_5.owner = "trustable-code";
  inputs.src-nigui-v0_2_5.repo = "NiGui";
  inputs.src-nigui-v0_2_5.ref = "refs/tags/v0.2.5";
  
  outputs = { self, nixpkgs, src-nigui-v0_2_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nigui-v0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nigui-v0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}