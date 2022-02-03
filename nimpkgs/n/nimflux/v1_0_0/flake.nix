{
  description = ''InfluxDB API client library'';
  inputs.src-nimflux-v1_0_0.flake = false;
  inputs.src-nimflux-v1_0_0.type = "github";
  inputs.src-nimflux-v1_0_0.owner = "tdely";
  inputs.src-nimflux-v1_0_0.repo = "nimflux";
  inputs.src-nimflux-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-nimflux-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimflux-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimflux-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}