{
  description = ''Simple WebSocket library for nim.'';
  inputs.src-ws-0_4_3.flake = false;
  inputs.src-ws-0_4_3.type = "github";
  inputs.src-ws-0_4_3.owner = "treeform";
  inputs.src-ws-0_4_3.repo = "ws";
  inputs.src-ws-0_4_3.ref = "refs/tags/0.4.3";
  
  outputs = { self, nixpkgs, src-ws-0_4_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ws-0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ws-0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}