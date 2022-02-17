{
  description = ''SVG output from a shell.'';
  inputs.src-svgo-v0_3_1.flake = false;
  inputs.src-svgo-v0_3_1.type = "github";
  inputs.src-svgo-v0_3_1.owner = "jiro4989";
  inputs.src-svgo-v0_3_1.repo = "svgo";
  inputs.src-svgo-v0_3_1.ref = "refs/tags/v0.3.1";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-svgo-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-svgo-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-svgo-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}