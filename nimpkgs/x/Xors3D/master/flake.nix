{
  description = ''Blitz3D-esque DX9 engine for Nim'';
  inputs.src-Xors3D-master.flake = false;
  inputs.src-Xors3D-master.type = "github";
  inputs.src-Xors3D-master.owner = "Guevara-chan";
  inputs.src-Xors3D-master.repo = "Xors3D-for-Nim";
  inputs.src-Xors3D-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-Xors3D-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Xors3D-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-Xors3D-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}