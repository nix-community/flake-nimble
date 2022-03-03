{
  description = ''Wrapper around the open trivia db api'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-opentdb-v1_0_2.flake = false;
  inputs.src-opentdb-v1_0_2.type = "github";
  inputs.src-opentdb-v1_0_2.owner = "ire4ever1190";
  inputs.src-opentdb-v1_0_2.repo = "nim-opentmdb";
  inputs.src-opentdb-v1_0_2.ref = "refs/tags/v1.0.2";
  inputs.src-opentdb-v1_0_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-opentdb-v1_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opentdb-v1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-opentdb-v1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}