{
  description = ''websockets for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-websocket-master.flake = false;
  inputs.src-websocket-master.type = "github";
  inputs.src-websocket-master.owner = "niv";
  inputs.src-websocket-master.repo = "websocket.nim";
  inputs.src-websocket-master.ref = "refs/heads/master";
  inputs.src-websocket-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-websocket-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-websocket-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-websocket-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}