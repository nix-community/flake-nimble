{
  description = ''Nim bindings for https://github.com/zserge/webview, a cross platform single header webview library'';
  inputs.src-webview-master.flake = false;
  inputs.src-webview-master.type = "github";
  inputs.src-webview-master.owner = "oskca";
  inputs.src-webview-master.repo = "webview";
  inputs.src-webview-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-webview-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webview-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-webview-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}