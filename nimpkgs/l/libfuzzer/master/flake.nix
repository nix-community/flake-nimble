{
  description = ''Thin interface for libFuzzer, an in-process, coverage-guided, evolutionary fuzzing engine.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-libfuzzer-master.flake = false;
  inputs.src-libfuzzer-master.type = "github";
  inputs.src-libfuzzer-master.owner = "planetis-m";
  inputs.src-libfuzzer-master.repo = "libfuzzer";
  inputs.src-libfuzzer-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libfuzzer-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libfuzzer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libfuzzer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}