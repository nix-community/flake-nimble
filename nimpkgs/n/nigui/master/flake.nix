{
  description = ''NiGui is a cross-platform, desktop GUI toolkit using native widgets.'';
  inputs.src-nigui-master.flake = false;
  inputs.src-nigui-master.type = "github";
  inputs.src-nigui-master.owner = "trustable-code";
  inputs.src-nigui-master.repo = "NiGui";
  inputs.src-nigui-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nigui-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nigui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nigui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}