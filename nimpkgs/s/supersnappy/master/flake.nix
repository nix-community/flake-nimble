{
  description = ''Dependency-free and performant Nim Snappy implementation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-supersnappy-master.flake = false;
  inputs.src-supersnappy-master.type = "github";
  inputs.src-supersnappy-master.owner = "guzba";
  inputs.src-supersnappy-master.repo = "supersnappy";
  inputs.src-supersnappy-master.ref = "refs/heads/master";
  inputs.src-supersnappy-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-supersnappy-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-supersnappy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-supersnappy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}