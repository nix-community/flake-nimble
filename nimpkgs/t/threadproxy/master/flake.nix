{
  description = ''Simplify Nim Inter-Thread Communication'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-threadproxy-master.flake = false;
  inputs.src-threadproxy-master.type = "github";
  inputs.src-threadproxy-master.owner = "jackhftang";
  inputs.src-threadproxy-master.repo = "threadproxy.nim";
  inputs.src-threadproxy-master.ref = "refs/heads/master";
  inputs.src-threadproxy-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-threadproxy-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-threadproxy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-threadproxy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}