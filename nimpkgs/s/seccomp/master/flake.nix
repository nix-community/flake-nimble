{
  description = ''Linux Seccomp sandbox library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-seccomp-master.flake = false;
  inputs.src-seccomp-master.type = "github";
  inputs.src-seccomp-master.owner = "FedericoCeratto";
  inputs.src-seccomp-master.repo = "nim-seccomp";
  inputs.src-seccomp-master.ref = "refs/heads/master";
  inputs.src-seccomp-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-seccomp-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-seccomp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-seccomp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}