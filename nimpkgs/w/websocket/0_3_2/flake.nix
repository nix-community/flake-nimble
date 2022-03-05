{
  description = ''websockets for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-websocket-0_3_2.flake = false;
  inputs.src-websocket-0_3_2.type = "github";
  inputs.src-websocket-0_3_2.owner = "niv";
  inputs.src-websocket-0_3_2.repo = "websocket.nim";
  inputs.src-websocket-0_3_2.ref = "refs/tags/0.3.2";
  inputs.src-websocket-0_3_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-websocket-0_3_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-websocket-0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-websocket-0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}