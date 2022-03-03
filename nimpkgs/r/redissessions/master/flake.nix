{
  description = ''Redis-backed sessions for jester'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-redissessions-master.flake = false;
  inputs.src-redissessions-master.type = "github";
  inputs.src-redissessions-master.owner = "ithkuil";
  inputs.src-redissessions-master.repo = "redissessions";
  inputs.src-redissessions-master.ref = "refs/heads/master";
  inputs.src-redissessions-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-redissessions-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redissessions-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-redissessions-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}