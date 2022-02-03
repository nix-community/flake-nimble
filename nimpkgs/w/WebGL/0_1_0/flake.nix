{
  description = ''Experimental wrapper to webgl for Nim'';
  inputs.src-webgl-0_1_0.flake = false;
  inputs.src-webgl-0_1_0.type = "github";
  inputs.src-webgl-0_1_0.owner = "stisa";
  inputs.src-webgl-0_1_0.repo = "webgl";
  inputs.src-webgl-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-WebGL-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-WebGL-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-WebGL-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}