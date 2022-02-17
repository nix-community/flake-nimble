{
  description = ''Library to parse ANSI escape codes'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ansiparse-master.flake = false;
  inputs.src-ansiparse-master.type = "github";
  inputs.src-ansiparse-master.owner = "PMunch";
  inputs.src-ansiparse-master.repo = "ansiparse";
  inputs.src-ansiparse-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ansiparse-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ansiparse-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ansiparse-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}