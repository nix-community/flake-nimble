{
  description = ''websockets for nim'';
  inputs.src-websocket-0_3_2.flake = false;
  inputs.src-websocket-0_3_2.type = "github";
  inputs.src-websocket-0_3_2.owner = "niv";
  inputs.src-websocket-0_3_2.repo = "websocket.nim";
  inputs.src-websocket-0_3_2.ref = "refs/tags/0.3.2";
  
  outputs = { self, nixpkgs, src-websocket-0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-websocket-0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-websocket-0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}