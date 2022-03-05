{
  description = ''Nim module for better URI handling'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-uri2-master.flake = false;
  inputs.src-uri2-master.type = "github";
  inputs.src-uri2-master.owner = "achesak";
  inputs.src-uri2-master.repo = "nim-uri2";
  inputs.src-uri2-master.ref = "refs/heads/master";
  inputs.src-uri2-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-uri2-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uri2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-uri2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}