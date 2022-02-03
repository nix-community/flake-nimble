{
  description = ''InfluxDB API client library'';
  inputs.src-nimflux-v0_1_1.flake = false;
  inputs.src-nimflux-v0_1_1.type = "github";
  inputs.src-nimflux-v0_1_1.owner = "tdely";
  inputs.src-nimflux-v0_1_1.repo = "nimflux";
  inputs.src-nimflux-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-nimflux-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimflux-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimflux-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}