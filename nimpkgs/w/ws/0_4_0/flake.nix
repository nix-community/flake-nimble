{
  description = ''Simple WebSocket library for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ws-0_4_0.flake = false;
  inputs.src-ws-0_4_0.type = "github";
  inputs.src-ws-0_4_0.owner = "treeform";
  inputs.src-ws-0_4_0.repo = "ws";
  inputs.src-ws-0_4_0.ref = "refs/tags/0.4.0";
  inputs.src-ws-0_4_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ws-0_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ws-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ws-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}