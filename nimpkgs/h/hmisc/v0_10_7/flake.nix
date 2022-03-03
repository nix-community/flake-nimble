{
  description = ''Collection of helper utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hmisc-v0_10_7.flake = false;
  inputs.src-hmisc-v0_10_7.type = "github";
  inputs.src-hmisc-v0_10_7.owner = "haxscramper";
  inputs.src-hmisc-v0_10_7.repo = "hmisc";
  inputs.src-hmisc-v0_10_7.ref = "refs/tags/v0.10.7";
  inputs.src-hmisc-v0_10_7.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."fusion".type = "github";
  # inputs."fusion".owner = "riinr";
  # inputs."fusion".repo = "flake-nimble";
  # inputs."fusion".ref = "flake-pinning";
  # inputs."fusion".dir = "nimpkgs/f/fusion";
  # inputs."fusion".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."fusion".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hmisc-v0_10_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_10_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hmisc-v0_10_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}