{
  description = ''The Nim toolchain installer.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-choosenim-v0_8_2.flake = false;
  inputs.src-choosenim-v0_8_2.type = "github";
  inputs.src-choosenim-v0_8_2.owner = "dom96";
  inputs.src-choosenim-v0_8_2.repo = "choosenim";
  inputs.src-choosenim-v0_8_2.ref = "refs/tags/v0.8.2";
  inputs.src-choosenim-v0_8_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimble".type = "github";
  # inputs."nimble".owner = "riinr";
  # inputs."nimble".repo = "flake-nimble";
  # inputs."nimble".ref = "flake-pinning";
  # inputs."nimble".dir = "nimpkgs/n/nimble";
  # inputs."nimble".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimble".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."analytics".type = "github";
  # inputs."analytics".owner = "riinr";
  # inputs."analytics".repo = "flake-nimble";
  # inputs."analytics".ref = "flake-pinning";
  # inputs."analytics".dir = "nimpkgs/a/analytics";
  # inputs."analytics".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."analytics".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."osinfo".type = "github";
  # inputs."osinfo".owner = "riinr";
  # inputs."osinfo".repo = "flake-nimble";
  # inputs."osinfo".ref = "flake-pinning";
  # inputs."osinfo".dir = "nimpkgs/o/osinfo";
  # inputs."osinfo".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."osinfo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."zippy".type = "github";
  # inputs."zippy".owner = "riinr";
  # inputs."zippy".repo = "flake-nimble";
  # inputs."zippy".ref = "flake-pinning";
  # inputs."zippy".dir = "nimpkgs/z/zippy";
  # inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-choosenim-v0_8_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-choosenim-v0_8_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-choosenim-v0_8_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}