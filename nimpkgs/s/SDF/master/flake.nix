{
  description = ''Signed Distance Field builder for contour texturing in Nim'';
  inputs.src-SDF-master.flake = false;
  inputs.src-SDF-master.type = "github";
  inputs.src-SDF-master.owner = "Halsys";
  inputs.src-SDF-master.repo = "SDF.nim";
  inputs.src-SDF-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-SDF-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-SDF-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-SDF-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}