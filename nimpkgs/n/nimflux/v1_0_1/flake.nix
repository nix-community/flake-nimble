{
  description = ''InfluxDB API client library'';
  inputs.src-nimflux-v1_0_1.flake = false;
  inputs.src-nimflux-v1_0_1.type = "github";
  inputs.src-nimflux-v1_0_1.owner = "tdely";
  inputs.src-nimflux-v1_0_1.repo = "nimflux";
  inputs.src-nimflux-v1_0_1.ref = "refs/tags/v1.0.1";
  
  outputs = { self, nixpkgs, src-nimflux-v1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimflux-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimflux-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}