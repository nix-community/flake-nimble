{
  description = ''preprod'';
  inputs.src-preprod-main.flake = false;
  inputs.src-preprod-main.type = "github";
  inputs.src-preprod-main.owner = "j-a-s-d";
  inputs.src-preprod-main.repo = "preprod";
  inputs.src-preprod-main.ref = "refs/heads/main";
  
  
  inputs."xam".url = "path:../../../x/xam";
  inputs."xam".type = "github";
  inputs."xam".owner = "riinr";
  inputs."xam".repo = "flake-nimble";
  inputs."xam".ref = "flake-pinning";
  inputs."xam".dir = "nimpkgs/x/xam";

  outputs = { self, nixpkgs, src-preprod-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-preprod-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-preprod-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}