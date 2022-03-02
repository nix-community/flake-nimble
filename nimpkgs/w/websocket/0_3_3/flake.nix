{
  description = ''websockets for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-websocket-0_3_3.flake = false;
  inputs.src-websocket-0_3_3.type = "github";
  inputs.src-websocket-0_3_3.owner = "niv";
  inputs.src-websocket-0_3_3.repo = "websocket.nim";
  inputs.src-websocket-0_3_3.ref = "refs/tags/0.3.3";
  inputs.src-websocket-0_3_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-websocket-0_3_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-websocket-0_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-websocket-0_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}