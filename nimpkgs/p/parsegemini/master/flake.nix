{
  description = ''Library for parsing text/gemini'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-parsegemini-master.flake = false;
  inputs.src-parsegemini-master.type = "github";
  inputs.src-parsegemini-master.owner = "autumngray";
  inputs.src-parsegemini-master.repo = "parsegemini";
  inputs.src-parsegemini-master.ref = "refs/heads/master";
  inputs.src-parsegemini-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-parsegemini-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-parsegemini-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-parsegemini-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}