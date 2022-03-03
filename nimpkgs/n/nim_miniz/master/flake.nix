{
  description = ''Nim wrapper for miniz'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nim_miniz-master.flake = false;
  inputs.src-nim_miniz-master.type = "github";
  inputs.src-nim_miniz-master.owner = "h3rald";
  inputs.src-nim_miniz-master.repo = "nim-miniz";
  inputs.src-nim_miniz-master.ref = "refs/heads/master";
  inputs.src-nim_miniz-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nim_miniz-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_miniz-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nim_miniz-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}