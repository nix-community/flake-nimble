{
  description = ''Web Technologies based Crossplatform GUI, modified wrapper for modified webview.h'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-webgui-master.flake = false;
  inputs.src-webgui-master.type = "github";
  inputs.src-webgui-master.owner = "juancarlospaco";
  inputs.src-webgui-master.repo = "webgui";
  inputs.src-webgui-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-webgui-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webgui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-webgui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}