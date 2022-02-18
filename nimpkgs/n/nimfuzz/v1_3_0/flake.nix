{
  description = ''Simple and compact fuzzing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimfuzz-v1_3_0.flake = false;
  inputs.src-nimfuzz-v1_3_0.type = "github";
  inputs.src-nimfuzz-v1_3_0.owner = "apense";
  inputs.src-nimfuzz-v1_3_0.repo = "nimfuzz";
  inputs.src-nimfuzz-v1_3_0.ref = "refs/tags/v1.3.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfuzz-v1_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfuzz-v1_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfuzz-v1_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}