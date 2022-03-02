{
  description = ''Websockets wrapper for nim js backend.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-jswebsockets-0_1_3.flake = false;
  inputs.src-jswebsockets-0_1_3.type = "github";
  inputs.src-jswebsockets-0_1_3.owner = "stisa";
  inputs.src-jswebsockets-0_1_3.repo = "jswebsockets";
  inputs.src-jswebsockets-0_1_3.ref = "refs/tags/0.1.3";
  inputs.src-jswebsockets-0_1_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jswebsockets-0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jswebsockets-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jswebsockets-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}