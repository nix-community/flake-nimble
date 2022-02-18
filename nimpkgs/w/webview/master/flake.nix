{
  description = ''Nim bindings for https://github.com/zserge/webview, a cross platform single header webview library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-webview-master.flake = false;
  inputs.src-webview-master.type = "github";
  inputs.src-webview-master.owner = "oskca";
  inputs.src-webview-master.repo = "webview";
  inputs.src-webview-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-webview-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webview-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-webview-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}