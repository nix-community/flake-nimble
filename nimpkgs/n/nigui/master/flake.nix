{
  description = ''NiGui is a cross-platform, desktop GUI toolkit using native widgets.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nigui-master.flake = false;
  inputs.src-nigui-master.type = "github";
  inputs.src-nigui-master.owner = "trustable-code";
  inputs.src-nigui-master.repo = "NiGui";
  inputs.src-nigui-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nigui-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nigui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nigui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}