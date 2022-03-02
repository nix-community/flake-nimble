{
  description = ''Simple WebSocket library for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ws-0_3_2.flake = false;
  inputs.src-ws-0_3_2.type = "github";
  inputs.src-ws-0_3_2.owner = "treeform";
  inputs.src-ws-0_3_2.repo = "ws";
  inputs.src-ws-0_3_2.ref = "refs/tags/0.3.2";
  inputs.src-ws-0_3_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ws-0_3_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ws-0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ws-0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}