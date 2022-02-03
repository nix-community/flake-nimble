{
  description = ''websockets for nim'';
  inputs.src-websocket-0_3_4.flake = false;
  inputs.src-websocket-0_3_4.type = "github";
  inputs.src-websocket-0_3_4.owner = "niv";
  inputs.src-websocket-0_3_4.repo = "websocket.nim";
  inputs.src-websocket-0_3_4.ref = "refs/tags/0.3.4";
  
  outputs = { self, nixpkgs, src-websocket-0_3_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-websocket-0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-websocket-0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}