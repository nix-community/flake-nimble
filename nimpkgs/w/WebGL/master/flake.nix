{
  description = ''Experimental wrapper to webgl for Nim'';
  inputs.src-webgl-master.flake = false;
  inputs.src-webgl-master.type = "github";
  inputs.src-webgl-master.owner = "stisa";
  inputs.src-webgl-master.repo = "webgl";
  inputs.src-webgl-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-WebGL-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-WebGL-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-WebGL-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}