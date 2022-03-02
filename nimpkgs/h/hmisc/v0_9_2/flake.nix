{
  description = ''Collection of helper utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-hmisc-v0_9_2.flake = false;
  inputs.src-hmisc-v0_9_2.type = "github";
  inputs.src-hmisc-v0_9_2.owner = "haxscramper";
  inputs.src-hmisc-v0_9_2.repo = "hmisc";
  inputs.src-hmisc-v0_9_2.ref = "refs/tags/v0.9.2";
  inputs.src-hmisc-v0_9_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hmisc-v0_9_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_9_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hmisc-v0_9_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}