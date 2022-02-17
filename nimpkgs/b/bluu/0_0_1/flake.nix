{
  description = ''Microsoft Azure Cloud Computing Platform and Services (MAC) APIs'';
  inputs.src-bluu-0_0_1.flake = false;
  inputs.src-bluu-0_0_1.type = "github";
  inputs.src-bluu-0_0_1.owner = "disruptek";
  inputs.src-bluu-0_0_1.repo = "bluu";
  inputs.src-bluu-0_0_1.ref = "refs/tags/0.0.1";
  
  
  inputs."openapi".type = "github";
  inputs."openapi".owner = "riinr";
  inputs."openapi".repo = "flake-nimble";
  inputs."openapi".ref = "flake-pinning";
  inputs."openapi".dir = "nimpkgs/o/openapi";

  outputs = { self, nixpkgs, src-bluu-0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bluu-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bluu-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}