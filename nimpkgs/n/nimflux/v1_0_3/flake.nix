{
  description = ''InfluxDB API client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimflux-v1_0_3.flake = false;
  inputs.src-nimflux-v1_0_3.type = "github";
  inputs.src-nimflux-v1_0_3.owner = "tdely";
  inputs.src-nimflux-v1_0_3.repo = "nimflux";
  inputs.src-nimflux-v1_0_3.ref = "refs/tags/v1.0.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimflux-v1_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimflux-v1_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimflux-v1_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}