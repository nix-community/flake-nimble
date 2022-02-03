{
  description = ''A loose, direct to object json parser with hooks.'';
  inputs.src-jsony-1_0_1.flake = false;
  inputs.src-jsony-1_0_1.type = "github";
  inputs.src-jsony-1_0_1.owner = "treeform";
  inputs.src-jsony-1_0_1.repo = "jsony";
  inputs.src-jsony-1_0_1.ref = "refs/tags/1.0.1";
  
  outputs = { self, nixpkgs, src-jsony-1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsony-1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jsony-1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}