{
  description = ''Blitz3D-esque DX9 engine for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-Xors3D-master.flake = false;
  inputs.src-Xors3D-master.type = "github";
  inputs.src-Xors3D-master.owner = "Guevara-chan";
  inputs.src-Xors3D-master.repo = "Xors3D-for-Nim";
  inputs.src-Xors3D-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-Xors3D-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Xors3D-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-Xors3D-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}