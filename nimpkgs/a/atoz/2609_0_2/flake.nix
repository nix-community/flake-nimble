{
  description = ''Amazon Web Services (AWS) APIs'';
  inputs.src-atoz-2609_0_2.flake = false;
  inputs.src-atoz-2609_0_2.type = "github";
  inputs.src-atoz-2609_0_2.owner = "disruptek";
  inputs.src-atoz-2609_0_2.repo = "atoz";
  inputs.src-atoz-2609_0_2.ref = "refs/tags/2609.0.2";
  
  
  inputs."sigv4".type = "github";
  inputs."sigv4".owner = "riinr";
  inputs."sigv4".repo = "flake-nimble";
  inputs."sigv4".ref = "flake-pinning";
  inputs."sigv4".dir = "nimpkgs/s/sigv4";

  
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

  outputs = { self, nixpkgs, src-atoz-2609_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-atoz-2609_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-atoz-2609_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}