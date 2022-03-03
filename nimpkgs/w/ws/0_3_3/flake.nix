{
  description = ''Simple WebSocket library for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ws-0_3_3.flake = false;
  inputs.src-ws-0_3_3.type = "github";
  inputs.src-ws-0_3_3.owner = "treeform";
  inputs.src-ws-0_3_3.repo = "ws";
  inputs.src-ws-0_3_3.ref = "refs/tags/0.3.3";
  inputs.src-ws-0_3_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ws-0_3_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ws-0_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ws-0_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}