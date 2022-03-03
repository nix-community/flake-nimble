{
  description = ''Web Technologies based Crossplatform GUI, modified wrapper for modified webview.h'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-webgui-0_5_0.flake = false;
  inputs.src-webgui-0_5_0.type = "github";
  inputs.src-webgui-0_5_0.owner = "juancarlospaco";
  inputs.src-webgui-0_5_0.repo = "webgui";
  inputs.src-webgui-0_5_0.ref = "refs/tags/0.5.0";
  inputs.src-webgui-0_5_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-webgui-0_5_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webgui-0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-webgui-0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}