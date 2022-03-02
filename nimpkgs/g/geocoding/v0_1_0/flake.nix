{
  description = ''A simple library for Google Maps Geocoding API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-geocoding-v0_1_0.flake = false;
  inputs.src-geocoding-v0_1_0.type = "github";
  inputs.src-geocoding-v0_1_0.owner = "saratchandra92";
  inputs.src-geocoding-v0_1_0.repo = "nim-geocoding";
  inputs.src-geocoding-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-geocoding-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-geocoding-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-geocoding-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-geocoding-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}