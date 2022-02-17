{
  description = ''rodster'';
  inputs.src-rodster-0_3_0.flake = false;
  inputs.src-rodster-0_3_0.type = "github";
  inputs.src-rodster-0_3_0.owner = "j-a-s-d";
  inputs.src-rodster-0_3_0.repo = "rodster";
  inputs.src-rodster-0_3_0.ref = "refs/tags/0.3.0";
  
  
  inputs."xam".type = "github";
  inputs."xam".owner = "riinr";
  inputs."xam".repo = "flake-nimble";
  inputs."xam".ref = "flake-pinning";
  inputs."xam".dir = "nimpkgs/x/xam";

  outputs = { self, nixpkgs, src-rodster-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rodster-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rodster-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}