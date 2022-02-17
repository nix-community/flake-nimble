{
  description = ''OpenAPI Code Generator'';
  inputs.src-openapi-1_0_0.flake = false;
  inputs.src-openapi-1_0_0.type = "github";
  inputs.src-openapi-1_0_0.owner = "disruptek";
  inputs.src-openapi-1_0_0.repo = "openapi";
  inputs.src-openapi-1_0_0.ref = "refs/tags/1.0.0";
  
  
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  outputs = { self, nixpkgs, src-openapi-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-openapi-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-openapi-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}