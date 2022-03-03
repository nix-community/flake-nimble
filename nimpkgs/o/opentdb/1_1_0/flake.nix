{
  description = ''Wrapper around the open trivia db api'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-opentdb-1_1_0.flake = false;
  inputs.src-opentdb-1_1_0.type = "github";
  inputs.src-opentdb-1_1_0.owner = "ire4ever1190";
  inputs.src-opentdb-1_1_0.repo = "nim-opentmdb";
  inputs.src-opentdb-1_1_0.ref = "refs/tags/1.1.0";
  inputs.src-opentdb-1_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-opentdb-1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opentdb-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-opentdb-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}