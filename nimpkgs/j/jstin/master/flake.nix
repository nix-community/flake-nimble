{
  description = ''JS {de,}serialization as it says on the tin'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-jstin-master.flake = false;
  inputs.src-jstin-master.type = "github";
  inputs.src-jstin-master.owner = "nim-lang";
  inputs.src-jstin-master.repo = "jstin";
  inputs.src-jstin-master.ref = "refs/heads/master";
  inputs.src-jstin-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jstin-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jstin-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jstin-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}