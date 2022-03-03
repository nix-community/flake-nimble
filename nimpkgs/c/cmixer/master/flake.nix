{
  description = ''Lightweight audio mixer for games'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cmixer-master.flake = false;
  inputs.src-cmixer-master.type = "github";
  inputs.src-cmixer-master.owner = "rxi";
  inputs.src-cmixer-master.repo = "cmixer-nim";
  inputs.src-cmixer-master.ref = "refs/heads/master";
  inputs.src-cmixer-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cmixer-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cmixer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cmixer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}