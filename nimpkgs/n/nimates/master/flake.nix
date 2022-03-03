{
  description = ''Client library for the Postmates API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimates-master.flake = false;
  inputs.src-nimates-master.type = "github";
  inputs.src-nimates-master.owner = "jamesalbert";
  inputs.src-nimates-master.repo = "nimates";
  inputs.src-nimates-master.ref = "refs/heads/master";
  inputs.src-nimates-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimates-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimates-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimates-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}