{
  description = ''markx selects execution targets with editor and executes commands.'';
  inputs.src-markx-v1_0_0.flake = false;
  inputs.src-markx-v1_0_0.type = "github";
  inputs.src-markx-v1_0_0.owner = "jiro4989";
  inputs.src-markx-v1_0_0.repo = "markx";
  inputs.src-markx-v1_0_0.ref = "refs/tags/v1.0.0";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-markx-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-markx-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-markx-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}