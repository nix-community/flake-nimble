{
  description = ''Functionality for compare two values'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-qeu-master.flake = false;
  inputs.src-qeu-master.type = "github";
  inputs.src-qeu-master.owner = "hyu1996";
  inputs.src-qeu-master.repo = "qeu";
  inputs.src-qeu-master.ref = "refs/heads/master";
  inputs.src-qeu-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-qeu-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-qeu-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-qeu-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}