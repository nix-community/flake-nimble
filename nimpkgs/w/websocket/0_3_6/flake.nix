{
  description = ''websockets for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-websocket-0_3_6.flake = false;
  inputs.src-websocket-0_3_6.type = "github";
  inputs.src-websocket-0_3_6.owner = "niv";
  inputs.src-websocket-0_3_6.repo = "websocket.nim";
  inputs.src-websocket-0_3_6.ref = "refs/tags/0.3.6";
  inputs.src-websocket-0_3_6.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-websocket-0_3_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-websocket-0_3_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-websocket-0_3_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}