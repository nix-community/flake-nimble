{
  description = ''Shebang frontend for running nim code as scripts. Does not require .nim extensions.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimrun-master.flake = false;
  inputs.src-nimrun-master.type = "github";
  inputs.src-nimrun-master.owner = "lee-b";
  inputs.src-nimrun-master.repo = "nimrun";
  inputs.src-nimrun-master.ref = "refs/heads/master";
  
  
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimrun-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimrun-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimrun-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}