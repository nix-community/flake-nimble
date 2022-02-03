{
  description = ''Experimental wrapper to webgl for Nim'';
  inputs.src-webgl-0_2_1.flake = false;
  inputs.src-webgl-0_2_1.type = "github";
  inputs.src-webgl-0_2_1.owner = "stisa";
  inputs.src-webgl-0_2_1.repo = "webgl";
  inputs.src-webgl-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, src-WebGL-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-WebGL-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-WebGL-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}