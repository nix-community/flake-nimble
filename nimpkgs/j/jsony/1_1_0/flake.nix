{
  description = ''A loose, direct to object json parser with hooks.'';
  inputs.src-jsony-1_1_0.flake = false;
  inputs.src-jsony-1_1_0.type = "github";
  inputs.src-jsony-1_1_0.owner = "treeform";
  inputs.src-jsony-1_1_0.repo = "jsony";
  inputs.src-jsony-1_1_0.ref = "refs/tags/1.1.0";
  
  outputs = { self, nixpkgs, src-jsony-1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsony-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jsony-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}