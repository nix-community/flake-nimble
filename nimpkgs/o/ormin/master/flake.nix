{
  description = ''Prepared SQL statement generator. A lightweight ORM.'';
  inputs.src-ormin-master.flake = false;
  inputs.src-ormin-master.type = "github";
  inputs.src-ormin-master.owner = "Araq";
  inputs.src-ormin-master.repo = "ormin";
  inputs.src-ormin-master.ref = "refs/heads/master";
  
  
  inputs."websocket".url = "path:../../../w/websocket";
  inputs."websocket".type = "github";
  inputs."websocket".owner = "riinr";
  inputs."websocket".repo = "flake-nimble";
  inputs."websocket".ref = "flake-pinning";
  inputs."websocket".dir = "nimpkgs/w/websocket";

  outputs = { self, nixpkgs, src-ormin-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ormin-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ormin-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}