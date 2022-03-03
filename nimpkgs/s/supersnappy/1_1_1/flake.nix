{
  description = ''Dependency-free and performant Nim Snappy implementation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-supersnappy-1_1_1.flake = false;
  inputs.src-supersnappy-1_1_1.type = "github";
  inputs.src-supersnappy-1_1_1.owner = "guzba";
  inputs.src-supersnappy-1_1_1.repo = "supersnappy";
  inputs.src-supersnappy-1_1_1.ref = "refs/tags/1.1.1";
  inputs.src-supersnappy-1_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-supersnappy-1_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-supersnappy-1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-supersnappy-1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}