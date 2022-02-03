{
  description = ''InfluxDB API client library'';
  inputs.src-nimflux-v0_1_3.flake = false;
  inputs.src-nimflux-v0_1_3.type = "github";
  inputs.src-nimflux-v0_1_3.owner = "tdely";
  inputs.src-nimflux-v0_1_3.repo = "nimflux";
  inputs.src-nimflux-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-nimflux-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimflux-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimflux-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}