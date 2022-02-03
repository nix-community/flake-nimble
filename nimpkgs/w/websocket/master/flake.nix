{
  description = ''websockets for nim'';
  inputs.src-websocket-master.flake = false;
  inputs.src-websocket-master.type = "github";
  inputs.src-websocket-master.owner = "niv";
  inputs.src-websocket-master.repo = "websocket.nim";
  inputs.src-websocket-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-websocket-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-websocket-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-websocket-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}