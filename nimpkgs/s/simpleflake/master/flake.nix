{
  description = ''Simpleflake for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-simpleflake-master.flake = false;
  inputs.src-simpleflake-master.type = "github";
  inputs.src-simpleflake-master.owner = "aisk";
  inputs.src-simpleflake-master.repo = "simpleflake.nim";
  inputs.src-simpleflake-master.ref = "refs/heads/master";
  inputs.src-simpleflake-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simpleflake-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleflake-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simpleflake-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}