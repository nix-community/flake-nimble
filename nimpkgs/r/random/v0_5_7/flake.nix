{
  description = ''Pseudo-random number generation library inspired by Python'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-random-v0_5_7.flake = false;
  inputs.src-random-v0_5_7.type = "github";
  inputs.src-random-v0_5_7.owner = "oprypin";
  inputs.src-random-v0_5_7.repo = "nim-random";
  inputs.src-random-v0_5_7.ref = "refs/tags/v0.5.7";
  inputs.src-random-v0_5_7.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-random-v0_5_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-random-v0_5_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-random-v0_5_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}