{
  description = ''Mathematical numerical named static constants useful for different disciplines'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-constants-master.flake = false;
  inputs.src-constants-master.type = "github";
  inputs.src-constants-master.owner = "juancarlospaco";
  inputs.src-constants-master.repo = "nim-constants";
  inputs.src-constants-master.ref = "refs/heads/master";
  inputs.src-constants-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-constants-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-constants-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-constants-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}