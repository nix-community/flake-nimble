{
  description = ''webrod'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-webrod-main.flake = false;
  inputs.src-webrod-main.type = "github";
  inputs.src-webrod-main.owner = "j-a-s-d";
  inputs.src-webrod-main.repo = "webrod";
  inputs.src-webrod-main.ref = "refs/heads/main";
  inputs.src-webrod-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."xam".type = "github";
  # inputs."xam".owner = "riinr";
  # inputs."xam".repo = "flake-nimble";
  # inputs."xam".ref = "flake-pinning";
  # inputs."xam".dir = "nimpkgs/x/xam";
  # inputs."xam".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."xam".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-webrod-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webrod-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-webrod-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}