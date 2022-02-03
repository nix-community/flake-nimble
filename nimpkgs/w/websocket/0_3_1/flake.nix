{
  description = ''websockets for nim'';
  inputs.src-websocket-0_3_1.flake = false;
  inputs.src-websocket-0_3_1.type = "github";
  inputs.src-websocket-0_3_1.owner = "niv";
  inputs.src-websocket-0_3_1.repo = "websocket.nim";
  inputs.src-websocket-0_3_1.ref = "refs/tags/0.3.1";
  
  outputs = { self, nixpkgs, src-websocket-0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-websocket-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-websocket-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}