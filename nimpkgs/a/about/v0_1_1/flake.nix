{
  description = ''Executable for finding information about programs in PATH'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-about-v0_1_1.flake = false;
  inputs.src-about-v0_1_1.type = "github";
  inputs.src-about-v0_1_1.owner = "aleandros";
  inputs.src-about-v0_1_1.repo = "about";
  inputs.src-about-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-about-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-about-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-about-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-about-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
