{
  description = ''The core types and functions of the SciNim ecosystem'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-scinim-main.flake = false;
  inputs.src-scinim-main.type = "github";
  inputs.src-scinim-main.owner = "SciNim";
  inputs.src-scinim-main.repo = "scinim";
  inputs.src-scinim-main.ref = "refs/heads/main";
  inputs.src-scinim-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."fusion".type = "github";
  # inputs."fusion".owner = "riinr";
  # inputs."fusion".repo = "flake-nimble";
  # inputs."fusion".ref = "flake-pinning";
  # inputs."fusion".dir = "nimpkgs/f/fusion";
  # inputs."fusion".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."fusion".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."arraymancer".type = "github";
  # inputs."arraymancer".owner = "riinr";
  # inputs."arraymancer".repo = "flake-nimble";
  # inputs."arraymancer".ref = "flake-pinning";
  # inputs."arraymancer".dir = "nimpkgs/a/arraymancer";
  # inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."polynumeric".type = "github";
  # inputs."polynumeric".owner = "riinr";
  # inputs."polynumeric".repo = "flake-nimble";
  # inputs."polynumeric".ref = "flake-pinning";
  # inputs."polynumeric".dir = "nimpkgs/p/polynumeric";
  # inputs."polynumeric".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."polynumeric".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimpy".type = "github";
  # inputs."nimpy".owner = "riinr";
  # inputs."nimpy".repo = "flake-nimble";
  # inputs."nimpy".ref = "flake-pinning";
  # inputs."nimpy".dir = "nimpkgs/n/nimpy";
  # inputs."nimpy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-scinim-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scinim-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-scinim-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}