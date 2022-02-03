{
  description = ''A low level GPIO library for the BeagleBone board family'';
  inputs.src-boneIO-master.flake = false;
  inputs.src-boneIO-master.type = "github";
  inputs.src-boneIO-master.owner = "xyz32";
  inputs.src-boneIO-master.repo = "boneIO";
  inputs.src-boneIO-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-boneIO-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-boneIO-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-boneIO-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}