{
  description = ''Preserves data model and serialization format'';
  inputs.src-preserves-v3_0_0.flake = false;
  inputs.src-preserves-v3_0_0.type = "other";
  inputs.src-preserves-v3_0_0.owner = "~ehmry";
  inputs.src-preserves-v3_0_0.repo = "preserves-nim";
  inputs.src-preserves-v3_0_0.ref = "refs/tags/v3.0.0";
  
  
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  outputs = { self, nixpkgs, src-preserves-v3_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-preserves-v3_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-preserves-v3_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}