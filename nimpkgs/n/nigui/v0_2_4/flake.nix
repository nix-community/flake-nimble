{
  description = ''NiGui is a cross-platform, desktop GUI toolkit using native widgets.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nigui-v0_2_4.flake = false;
  inputs.src-nigui-v0_2_4.type = "github";
  inputs.src-nigui-v0_2_4.owner = "trustable-code";
  inputs.src-nigui-v0_2_4.repo = "NiGui";
  inputs.src-nigui-v0_2_4.ref = "refs/tags/v0.2.4";
  inputs.src-nigui-v0_2_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nigui-v0_2_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nigui-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nigui-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}