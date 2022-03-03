{
  description = ''Simple and compact fuzzing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimfuzz-1_2_0.flake = false;
  inputs.src-nimfuzz-1_2_0.type = "github";
  inputs.src-nimfuzz-1_2_0.owner = "apense";
  inputs.src-nimfuzz-1_2_0.repo = "nimfuzz";
  inputs.src-nimfuzz-1_2_0.ref = "refs/tags/1.2.0";
  inputs.src-nimfuzz-1_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfuzz-1_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfuzz-1_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfuzz-1_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}