{
  description = ''Simple implementation of string slices with some of the strutils ported or wrapped to work on them. String slices offer a performance enhancement when working with large amounts of slices from one base string'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-strslice-v0_2_0.flake = false;
  inputs.src-strslice-v0_2_0.type = "github";
  inputs.src-strslice-v0_2_0.owner = "PMunch";
  inputs.src-strslice-v0_2_0.repo = "strslice";
  inputs.src-strslice-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-strslice-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-strslice-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-strslice-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}