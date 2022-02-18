{
  description = ''Pseudo-random number generation library inspired by Python'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-random-v0_5_5.flake = false;
  inputs.src-random-v0_5_5.type = "github";
  inputs.src-random-v0_5_5.owner = "oprypin";
  inputs.src-random-v0_5_5.repo = "nim-random";
  inputs.src-random-v0_5_5.ref = "refs/tags/v0.5.5";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-random-v0_5_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-random-v0_5_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-random-v0_5_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}