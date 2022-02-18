{
  description = ''Dependency-free and performant Nim Snappy implementation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-supersnappy-1_1_3.flake = false;
  inputs.src-supersnappy-1_1_3.type = "github";
  inputs.src-supersnappy-1_1_3.owner = "guzba";
  inputs.src-supersnappy-1_1_3.repo = "supersnappy";
  inputs.src-supersnappy-1_1_3.ref = "refs/tags/1.1.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-supersnappy-1_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-supersnappy-1_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-supersnappy-1_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}