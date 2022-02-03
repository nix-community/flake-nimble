{
  description = ''Microsoft Azure Cloud Computing Platform and Services (MAC) APIs'';
  inputs.src-bluu-0_0_2.flake = false;
  inputs.src-bluu-0_0_2.type = "github";
  inputs.src-bluu-0_0_2.owner = "disruptek";
  inputs.src-bluu-0_0_2.repo = "bluu";
  inputs.src-bluu-0_0_2.ref = "refs/tags/0.0.2";
  
  
  inputs."openapi".url = "path:../../../o/openapi";
  inputs."openapi".type = "github";
  inputs."openapi".owner = "riinr";
  inputs."openapi".repo = "flake-nimble";
  inputs."openapi".ref = "flake-pinning";
  inputs."openapi".dir = "nimpkgs/o/openapi";

  
  inputs."https://github.com/disruptek/rest.git".url = "path:../../../h/https://github.com/disruptek/rest.git";
  inputs."https://github.com/disruptek/rest.git".type = "github";
  inputs."https://github.com/disruptek/rest.git".owner = "riinr";
  inputs."https://github.com/disruptek/rest.git".repo = "flake-nimble";
  inputs."https://github.com/disruptek/rest.git".ref = "flake-pinning";
  inputs."https://github.com/disruptek/rest.git".dir = "nimpkgs/h/https://github.com/disruptek/rest.git";

  outputs = { self, nixpkgs, src-bluu-0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bluu-0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bluu-0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}