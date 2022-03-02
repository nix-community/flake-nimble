{
  description = ''Collection of helper utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-hmisc-v0_13_1.flake = false;
  inputs.src-hmisc-v0_13_1.type = "github";
  inputs.src-hmisc-v0_13_1.owner = "haxscramper";
  inputs.src-hmisc-v0_13_1.repo = "hmisc";
  inputs.src-hmisc-v0_13_1.ref = "refs/tags/v0.13.1";
  inputs.src-hmisc-v0_13_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/nim-lang/fusion.git".type = "github";
  # inputs."https://github.com/nim-lang/fusion.git".owner = "riinr";
  # inputs."https://github.com/nim-lang/fusion.git".repo = "flake-nimble";
  # inputs."https://github.com/nim-lang/fusion.git".ref = "flake-pinning";
  # inputs."https://github.com/nim-lang/fusion.git".dir = "nimpkgs/h/https://github.com/nim-lang/fusion.git";
  # inputs."https://github.com/nim-lang/fusion.git".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/nim-lang/fusion.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-hmisc-v0_13_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_13_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hmisc-v0_13_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}