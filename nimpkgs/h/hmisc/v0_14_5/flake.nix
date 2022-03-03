{
  description = ''Collection of helper utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hmisc-v0_14_5.flake = false;
  inputs.src-hmisc-v0_14_5.type = "github";
  inputs.src-hmisc-v0_14_5.owner = "haxscramper";
  inputs.src-hmisc-v0_14_5.repo = "hmisc";
  inputs.src-hmisc-v0_14_5.ref = "refs/tags/v0.14.5";
  inputs.src-hmisc-v0_14_5.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."benchy".type = "github";
  # inputs."benchy".owner = "riinr";
  # inputs."benchy".repo = "flake-nimble";
  # inputs."benchy".ref = "flake-pinning";
  # inputs."benchy".dir = "nimpkgs/b/benchy";
  # inputs."benchy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."benchy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."jsony".type = "github";
  # inputs."jsony".owner = "riinr";
  # inputs."jsony".repo = "flake-nimble";
  # inputs."jsony".ref = "flake-pinning";
  # inputs."jsony".dir = "nimpkgs/j/jsony";
  # inputs."jsony".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jsony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."unicodedb".type = "github";
  # inputs."unicodedb".owner = "riinr";
  # inputs."unicodedb".repo = "flake-nimble";
  # inputs."unicodedb".ref = "flake-pinning";
  # inputs."unicodedb".dir = "nimpkgs/u/unicodedb";
  # inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hmisc-v0_14_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_14_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hmisc-v0_14_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}