{
  description = ''Postgres Database ORM for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-gatabase-master.flake = false;
  inputs.src-gatabase-master.type = "github";
  inputs.src-gatabase-master.owner = "juancarlospaco";
  inputs.src-gatabase-master.repo = "nim-gatabase";
  inputs.src-gatabase-master.ref = "refs/heads/master";
  inputs.src-gatabase-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gatabase-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gatabase-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gatabase-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}