{
  description = ''Wrapper for Horde3D, a small open source 3D rendering engine.'';
  inputs.src-horde3d-master.flake = false;
  inputs.src-horde3d-master.type = "github";
  inputs.src-horde3d-master.owner = "fowlmouth";
  inputs.src-horde3d-master.repo = "horde3d";
  inputs.src-horde3d-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-horde3d-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-horde3d-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-horde3d-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}