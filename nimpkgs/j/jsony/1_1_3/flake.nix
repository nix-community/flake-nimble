{
  description = ''A loose, direct to object json parser with hooks.'';
  inputs.src-jsony-1_1_3.flake = false;
  inputs.src-jsony-1_1_3.type = "github";
  inputs.src-jsony-1_1_3.owner = "treeform";
  inputs.src-jsony-1_1_3.repo = "jsony";
  inputs.src-jsony-1_1_3.ref = "refs/tags/1.1.3";
  
  outputs = { self, nixpkgs, src-jsony-1_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsony-1_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jsony-1_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}