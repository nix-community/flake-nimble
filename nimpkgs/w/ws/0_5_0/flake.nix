{
  description = ''Simple WebSocket library for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ws-0_5_0.flake = false;
  inputs.src-ws-0_5_0.type = "github";
  inputs.src-ws-0_5_0.owner = "treeform";
  inputs.src-ws-0_5_0.repo = "ws";
  inputs.src-ws-0_5_0.ref = "refs/tags/0.5.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ws-0_5_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ws-0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ws-0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}