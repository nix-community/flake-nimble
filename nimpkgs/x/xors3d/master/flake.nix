{
  description = ''Blitz3D-esque DX9 engine for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-xors3d-master.flake = false;
  inputs.src-xors3d-master.type = "github";
  inputs.src-xors3d-master.owner = "guevara-chan";
  inputs.src-xors3d-master.repo = "xors3d-for-Nim";
  inputs.src-xors3d-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xors3d-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xors3d-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xors3d-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}