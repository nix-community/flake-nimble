{
  description = ''Google Cloud Platform (GCP) APIs'';
  inputs.src-gcplat-0_0_1.flake = false;
  inputs.src-gcplat-0_0_1.type = "github";
  inputs.src-gcplat-0_0_1.owner = "disruptek";
  inputs.src-gcplat-0_0_1.repo = "gcplat";
  inputs.src-gcplat-0_0_1.ref = "refs/tags/0.0.1";
  
  
  inputs."openapi".url = "path:../../../o/openapi";
  inputs."openapi".type = "github";
  inputs."openapi".owner = "riinr";
  inputs."openapi".repo = "flake-nimble";
  inputs."openapi".ref = "flake-pinning";
  inputs."openapi".dir = "nimpkgs/o/openapi";

  outputs = { self, nixpkgs, src-gcplat-0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gcplat-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gcplat-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}