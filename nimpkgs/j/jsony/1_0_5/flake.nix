{
  description = ''A loose, direct to object json parser with hooks.'';
  inputs.src-jsony-1_0_5.flake = false;
  inputs.src-jsony-1_0_5.type = "github";
  inputs.src-jsony-1_0_5.owner = "treeform";
  inputs.src-jsony-1_0_5.repo = "jsony";
  inputs.src-jsony-1_0_5.ref = "refs/tags/1.0.5";
  
  outputs = { self, nixpkgs, src-jsony-1_0_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsony-1_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jsony-1_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}