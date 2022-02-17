{
  description = ''webrod'';
  inputs.src-webrod-0_4_0.flake = false;
  inputs.src-webrod-0_4_0.type = "github";
  inputs.src-webrod-0_4_0.owner = "j-a-s-d";
  inputs.src-webrod-0_4_0.repo = "webrod";
  inputs.src-webrod-0_4_0.ref = "refs/tags/0.4.0";
  
  
  inputs."xam".type = "github";
  inputs."xam".owner = "riinr";
  inputs."xam".repo = "flake-nimble";
  inputs."xam".ref = "flake-pinning";
  inputs."xam".dir = "nimpkgs/x/xam";

  outputs = { self, nixpkgs, src-webrod-0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webrod-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-webrod-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}