{
  description = ''Shamir secret sharing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sss-master.flake = false;
  inputs.src-sss-master.type = "github";
  inputs.src-sss-master.owner = "markspanbroek";
  inputs.src-sss-master.repo = "sss.nim";
  inputs.src-sss-master.ref = "refs/heads/master";
  inputs.src-sss-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sss-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sss-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sss-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}