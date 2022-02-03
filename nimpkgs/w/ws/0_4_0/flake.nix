{
  description = ''Simple WebSocket library for nim.'';
  inputs.src-ws-0_4_0.flake = false;
  inputs.src-ws-0_4_0.type = "github";
  inputs.src-ws-0_4_0.owner = "treeform";
  inputs.src-ws-0_4_0.repo = "ws";
  inputs.src-ws-0_4_0.ref = "refs/tags/0.4.0";
  
  outputs = { self, nixpkgs, src-ws-0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ws-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ws-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}