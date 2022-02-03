{
  description = ''websockets for nim'';
  inputs.src-websocket-0_3_5.flake = false;
  inputs.src-websocket-0_3_5.type = "github";
  inputs.src-websocket-0_3_5.owner = "niv";
  inputs.src-websocket-0_3_5.repo = "websocket.nim";
  inputs.src-websocket-0_3_5.ref = "refs/tags/0.3.5";
  
  outputs = { self, nixpkgs, src-websocket-0_3_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-websocket-0_3_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-websocket-0_3_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}