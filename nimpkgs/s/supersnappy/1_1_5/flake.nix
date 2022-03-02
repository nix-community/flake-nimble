{
  description = ''Dependency-free and performant Nim Snappy implementation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-supersnappy-1_1_5.flake = false;
  inputs.src-supersnappy-1_1_5.type = "github";
  inputs.src-supersnappy-1_1_5.owner = "guzba";
  inputs.src-supersnappy-1_1_5.repo = "supersnappy";
  inputs.src-supersnappy-1_1_5.ref = "refs/tags/1.1.5";
  inputs.src-supersnappy-1_1_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-supersnappy-1_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-supersnappy-1_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-supersnappy-1_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}