{
  description = ''markx selects execution targets with editor and executes commands.'';
  inputs.src-markx-v1_0_1.flake = false;
  inputs.src-markx-v1_0_1.type = "github";
  inputs.src-markx-v1_0_1.owner = "jiro4989";
  inputs.src-markx-v1_0_1.repo = "markx";
  inputs.src-markx-v1_0_1.ref = "refs/tags/v1.0.1";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-markx-v1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-markx-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-markx-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}