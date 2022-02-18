{
  description = ''The Levenshtein Nim module contains functions for fast computation of Levenshtein distance and string similarity.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimlevenshtein-master.flake = false;
  inputs.src-nimlevenshtein-master.type = "github";
  inputs.src-nimlevenshtein-master.owner = "oswjk";
  inputs.src-nimlevenshtein-master.repo = "nimlevenshtein";
  inputs.src-nimlevenshtein-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimlevenshtein-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlevenshtein-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimlevenshtein-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}