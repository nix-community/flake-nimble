{
  description = ''OpenAPI Code Generator'';
  inputs.src-openapi-1_0_2.flake = false;
  inputs.src-openapi-1_0_2.type = "github";
  inputs.src-openapi-1_0_2.owner = "disruptek";
  inputs.src-openapi-1_0_2.repo = "openapi";
  inputs.src-openapi-1_0_2.ref = "refs/tags/1.0.2";
  
  
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  
  inputs."foreach".type = "github";
  inputs."foreach".owner = "riinr";
  inputs."foreach".repo = "flake-nimble";
  inputs."foreach".ref = "flake-pinning";
  inputs."foreach".dir = "nimpkgs/f/foreach";

  outputs = { self, nixpkgs, src-openapi-1_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-openapi-1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-openapi-1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}