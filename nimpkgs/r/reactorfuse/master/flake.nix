{
  description = ''Filesystem in userspace (FUSE) for Nim (for reactor.nim library)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-reactorfuse-master.flake = false;
  inputs.src-reactorfuse-master.type = "github";
  inputs.src-reactorfuse-master.owner = "zielmicha";
  inputs.src-reactorfuse-master.repo = "reactorfuse";
  inputs.src-reactorfuse-master.ref = "refs/heads/master";
  
  
  inputs."reactor".type = "github";
  inputs."reactor".owner = "riinr";
  inputs."reactor".repo = "flake-nimble";
  inputs."reactor".ref = "flake-pinning";
  inputs."reactor".dir = "nimpkgs/r/reactor";

  outputs = { self, nixpkgs, flakeNimbleLib, src-reactorfuse-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-reactorfuse-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-reactorfuse-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}