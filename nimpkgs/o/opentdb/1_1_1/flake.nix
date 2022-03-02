{
  description = ''Wrapper around the open trivia db api'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-opentdb-1_1_1.flake = false;
  inputs.src-opentdb-1_1_1.type = "github";
  inputs.src-opentdb-1_1_1.owner = "ire4ever1190";
  inputs.src-opentdb-1_1_1.repo = "nim-opentmdb";
  inputs.src-opentdb-1_1_1.ref = "refs/tags/1.1.1";
  inputs.src-opentdb-1_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-opentdb-1_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opentdb-1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-opentdb-1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}