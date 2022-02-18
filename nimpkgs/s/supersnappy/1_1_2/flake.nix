{
  description = ''Dependency-free and performant Nim Snappy implementation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-supersnappy-1_1_2.flake = false;
  inputs.src-supersnappy-1_1_2.type = "github";
  inputs.src-supersnappy-1_1_2.owner = "guzba";
  inputs.src-supersnappy-1_1_2.repo = "supersnappy";
  inputs.src-supersnappy-1_1_2.ref = "refs/tags/1.1.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-supersnappy-1_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-supersnappy-1_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-supersnappy-1_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}