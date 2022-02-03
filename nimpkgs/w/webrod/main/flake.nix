{
  description = ''webrod'';
  inputs.src-webrod-main.flake = false;
  inputs.src-webrod-main.type = "github";
  inputs.src-webrod-main.owner = "j-a-s-d";
  inputs.src-webrod-main.repo = "webrod";
  inputs.src-webrod-main.ref = "refs/heads/main";
  
  
  inputs."xam".url = "path:../../../x/xam";
  inputs."xam".type = "github";
  inputs."xam".owner = "riinr";
  inputs."xam".repo = "flake-nimble";
  inputs."xam".ref = "flake-pinning";
  inputs."xam".dir = "nimpkgs/x/xam";

  outputs = { self, nixpkgs, src-webrod-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webrod-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-webrod-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}