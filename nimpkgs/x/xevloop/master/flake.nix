{
  description = ''Library to more easily create X11 event loops'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-xevloop-master.flake = false;
  inputs.src-xevloop-master.type = "github";
  inputs.src-xevloop-master.owner = "PMunch";
  inputs.src-xevloop-master.repo = "xevloop";
  inputs.src-xevloop-master.ref = "refs/heads/master";
  
  
  inputs."x11".type = "github";
  inputs."x11".owner = "riinr";
  inputs."x11".repo = "flake-nimble";
  inputs."x11".ref = "flake-pinning";
  inputs."x11".dir = "nimpkgs/x/x11";

  outputs = { self, nixpkgs, flakeNimbleLib, src-xevloop-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xevloop-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xevloop-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}