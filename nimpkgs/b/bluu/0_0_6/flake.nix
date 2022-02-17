{
  description = ''Microsoft Azure Cloud Computing Platform and Services (MAC) APIs'';
  inputs.src-bluu-0_0_6.flake = false;
  inputs.src-bluu-0_0_6.type = "github";
  inputs.src-bluu-0_0_6.owner = "disruptek";
  inputs.src-bluu-0_0_6.repo = "bluu";
  inputs.src-bluu-0_0_6.ref = "refs/tags/0.0.6";
  
  
  inputs."https://github.com/disruptek/rest.git".type = "github";
  inputs."https://github.com/disruptek/rest.git".owner = "riinr";
  inputs."https://github.com/disruptek/rest.git".repo = "flake-nimble";
  inputs."https://github.com/disruptek/rest.git".ref = "flake-pinning";
  inputs."https://github.com/disruptek/rest.git".dir = "nimpkgs/h/https://github.com/disruptek/rest.git";

  
  inputs."https://github.com/disruptek/openapi.git".type = "github";
  inputs."https://github.com/disruptek/openapi.git".owner = "riinr";
  inputs."https://github.com/disruptek/openapi.git".repo = "flake-nimble";
  inputs."https://github.com/disruptek/openapi.git".ref = "flake-pinning";
  inputs."https://github.com/disruptek/openapi.git".dir = "nimpkgs/h/https://github.com/disruptek/openapi.git";

  
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  outputs = { self, nixpkgs, src-bluu-0_0_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bluu-0_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bluu-0_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}