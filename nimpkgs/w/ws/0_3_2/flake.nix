{
  description = ''Simple WebSocket library for nim.'';
  inputs.src-ws-0_3_2.flake = false;
  inputs.src-ws-0_3_2.type = "github";
  inputs.src-ws-0_3_2.owner = "treeform";
  inputs.src-ws-0_3_2.repo = "ws";
  inputs.src-ws-0_3_2.ref = "refs/tags/0.3.2";
  
  outputs = { self, nixpkgs, src-ws-0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ws-0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ws-0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}