{
  description = ''Simple WebSocket library for nim.'';
  inputs.src-ws-0_4_4.flake = false;
  inputs.src-ws-0_4_4.type = "github";
  inputs.src-ws-0_4_4.owner = "treeform";
  inputs.src-ws-0_4_4.repo = "ws";
  inputs.src-ws-0_4_4.ref = "refs/tags/0.4.4";
  
  outputs = { self, nixpkgs, src-ws-0_4_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ws-0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ws-0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}