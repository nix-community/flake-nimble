{
  description = ''InfluxDB API client library'';
  inputs.src-nimflux-v0_1_0.flake = false;
  inputs.src-nimflux-v0_1_0.type = "github";
  inputs.src-nimflux-v0_1_0.owner = "tdely";
  inputs.src-nimflux-v0_1_0.repo = "nimflux";
  inputs.src-nimflux-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."coverage".url = "path:../../../c/coverage";
  inputs."coverage".type = "github";
  inputs."coverage".owner = "riinr";
  inputs."coverage".repo = "flake-nimble";
  inputs."coverage".ref = "flake-pinning";
  inputs."coverage".dir = "nimpkgs/c/coverage";

  outputs = { self, nixpkgs, src-nimflux-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimflux-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimflux-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}