{
  description = ''preprod'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-preprod-main.flake = false;
  inputs.src-preprod-main.type = "github";
  inputs.src-preprod-main.owner = "j-a-s-d";
  inputs.src-preprod-main.repo = "preprod";
  inputs.src-preprod-main.ref = "refs/heads/main";
  
  
  inputs."xam".type = "github";
  inputs."xam".owner = "riinr";
  inputs."xam".repo = "flake-nimble";
  inputs."xam".ref = "flake-pinning";
  inputs."xam".dir = "nimpkgs/x/xam";

  outputs = { self, nixpkgs, flakeNimbleLib, src-preprod-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-preprod-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-preprod-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}