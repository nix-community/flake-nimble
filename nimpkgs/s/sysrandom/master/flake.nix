{
  description = ''A simple library to generate random data, using the system's PRNG.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sysrandom-master.flake = false;
  inputs.src-sysrandom-master.type = "github";
  inputs.src-sysrandom-master.owner = "euantorano";
  inputs.src-sysrandom-master.repo = "sysrandom.nim";
  inputs.src-sysrandom-master.ref = "refs/heads/master";
  inputs.src-sysrandom-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sysrandom-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sysrandom-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sysrandom-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}