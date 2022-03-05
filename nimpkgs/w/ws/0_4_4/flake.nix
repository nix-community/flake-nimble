{
  description = ''Simple WebSocket library for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ws-0_4_4.flake = false;
  inputs.src-ws-0_4_4.type = "github";
  inputs.src-ws-0_4_4.owner = "treeform";
  inputs.src-ws-0_4_4.repo = "ws";
  inputs.src-ws-0_4_4.ref = "refs/tags/0.4.4";
  inputs.src-ws-0_4_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ws-0_4_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ws-0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ws-0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}