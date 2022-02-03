{
  description = ''Simple WebSocket library for nim.'';
  inputs.src-ws-0_4_1.flake = false;
  inputs.src-ws-0_4_1.type = "github";
  inputs.src-ws-0_4_1.owner = "treeform";
  inputs.src-ws-0_4_1.repo = "ws";
  inputs.src-ws-0_4_1.ref = "refs/tags/0.4.1";
  
  outputs = { self, nixpkgs, src-ws-0_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ws-0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ws-0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}