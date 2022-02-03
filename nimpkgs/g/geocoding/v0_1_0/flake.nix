{
  description = ''A simple library for Google Maps Geocoding API'';
  inputs.src-geocoding-v0_1_0.flake = false;
  inputs.src-geocoding-v0_1_0.type = "github";
  inputs.src-geocoding-v0_1_0.owner = "saratchandra92";
  inputs.src-geocoding-v0_1_0.repo = "nim-geocoding";
  inputs.src-geocoding-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-geocoding-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-geocoding-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-geocoding-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}