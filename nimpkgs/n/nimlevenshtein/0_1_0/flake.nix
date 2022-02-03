{
  description = ''The Levenshtein Nim module contains functions for fast computation of Levenshtein distance and string similarity.'';
  inputs.src-nimlevenshtein-0_1_0.flake = false;
  inputs.src-nimlevenshtein-0_1_0.type = "github";
  inputs.src-nimlevenshtein-0_1_0.owner = "oswjk";
  inputs.src-nimlevenshtein-0_1_0.repo = "nimlevenshtein";
  inputs.src-nimlevenshtein-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-nimlevenshtein-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlevenshtein-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimlevenshtein-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}