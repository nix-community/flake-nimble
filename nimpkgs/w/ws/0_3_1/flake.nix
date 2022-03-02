{
  description = ''Simple WebSocket library for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ws-0_3_1.flake = false;
  inputs.src-ws-0_3_1.type = "github";
  inputs.src-ws-0_3_1.owner = "treeform";
  inputs.src-ws-0_3_1.repo = "ws";
  inputs.src-ws-0_3_1.ref = "refs/tags/0.3.1";
  inputs.src-ws-0_3_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ws-0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ws-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ws-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}