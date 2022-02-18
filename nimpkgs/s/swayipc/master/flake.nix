{
  description = ''IPC interface to sway (or i3) compositors'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-swayipc-master.flake = false;
  inputs.src-swayipc-master.type = "github";
  inputs.src-swayipc-master.owner = "disruptek";
  inputs.src-swayipc-master.repo = "swayipc";
  inputs.src-swayipc-master.ref = "refs/heads/master";
  
  
  inputs."nesm".type = "github";
  inputs."nesm".owner = "riinr";
  inputs."nesm".repo = "flake-nimble";
  inputs."nesm".ref = "flake-pinning";
  inputs."nesm".dir = "nimpkgs/n/nesm";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-swayipc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-swayipc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-swayipc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}