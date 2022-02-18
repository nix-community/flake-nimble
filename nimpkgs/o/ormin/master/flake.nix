{
  description = ''Prepared SQL statement generator. A lightweight ORM.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ormin-master.flake = false;
  inputs.src-ormin-master.type = "github";
  inputs.src-ormin-master.owner = "Araq";
  inputs.src-ormin-master.repo = "ormin";
  inputs.src-ormin-master.ref = "refs/heads/master";
  
  
  inputs."websocket".type = "github";
  inputs."websocket".owner = "riinr";
  inputs."websocket".repo = "flake-nimble";
  inputs."websocket".ref = "flake-pinning";
  inputs."websocket".dir = "nimpkgs/w/websocket";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ormin-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ormin-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ormin-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}