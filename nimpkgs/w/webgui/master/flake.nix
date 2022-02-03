{
  description = ''Web Technologies based Crossplatform GUI, modified wrapper for modified webview.h'';
  inputs.src-webgui-master.flake = false;
  inputs.src-webgui-master.type = "github";
  inputs.src-webgui-master.owner = "juancarlospaco";
  inputs.src-webgui-master.repo = "webgui";
  inputs.src-webgui-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-webgui-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webgui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-webgui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}