{
  description = ''Wrapper around the open trivia db api'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-opentdb-master.flake = false;
  inputs.src-opentdb-master.type = "github";
  inputs.src-opentdb-master.owner = "ire4ever1190";
  inputs.src-opentdb-master.repo = "nim-opentmdb";
  inputs.src-opentdb-master.ref = "refs/heads/master";
  inputs.src-opentdb-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-opentdb-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opentdb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-opentdb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}