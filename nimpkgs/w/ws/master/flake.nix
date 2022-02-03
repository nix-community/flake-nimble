{
  description = ''Simple WebSocket library for nim.'';
  inputs.src-ws-master.flake = false;
  inputs.src-ws-master.type = "github";
  inputs.src-ws-master.owner = "treeform";
  inputs.src-ws-master.repo = "ws";
  inputs.src-ws-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ws-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ws-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ws-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}