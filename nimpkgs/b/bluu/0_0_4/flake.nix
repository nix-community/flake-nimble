{
  description = ''Microsoft Azure Cloud Computing Platform and Services (MAC) APIs'';
  inputs.src-bluu-0_0_4.flake = false;
  inputs.src-bluu-0_0_4.type = "github";
  inputs.src-bluu-0_0_4.owner = "disruptek";
  inputs.src-bluu-0_0_4.repo = "bluu";
  inputs.src-bluu-0_0_4.ref = "refs/tags/0.0.4";
  
  
  inputs."openapi".type = "github";
  inputs."openapi".owner = "riinr";
  inputs."openapi".repo = "flake-nimble";
  inputs."openapi".ref = "flake-pinning";
  inputs."openapi".dir = "nimpkgs/o/openapi";

  
  inputs."https://github.com/disruptek/rest.git".type = "github";
  inputs."https://github.com/disruptek/rest.git".owner = "riinr";
  inputs."https://github.com/disruptek/rest.git".repo = "flake-nimble";
  inputs."https://github.com/disruptek/rest.git".ref = "flake-pinning";
  inputs."https://github.com/disruptek/rest.git".dir = "nimpkgs/h/https://github.com/disruptek/rest.git";

  outputs = { self, nixpkgs, src-bluu-0_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bluu-0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bluu-0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}