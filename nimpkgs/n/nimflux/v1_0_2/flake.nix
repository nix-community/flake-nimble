{
  description = ''InfluxDB API client library'';
  inputs.src-nimflux-v1_0_2.flake = false;
  inputs.src-nimflux-v1_0_2.type = "github";
  inputs.src-nimflux-v1_0_2.owner = "tdely";
  inputs.src-nimflux-v1_0_2.repo = "nimflux";
  inputs.src-nimflux-v1_0_2.ref = "refs/tags/v1.0.2";
  
  outputs = { self, nixpkgs, src-nimflux-v1_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimflux-v1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimflux-v1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}