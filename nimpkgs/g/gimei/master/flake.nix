{
  description = ''random Japanese name and address generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-gimei-master.flake = false;
  inputs.src-gimei-master.type = "github";
  inputs.src-gimei-master.owner = "mkanenobu";
  inputs.src-gimei-master.repo = "nim-gimei";
  inputs.src-gimei-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gimei-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gimei-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gimei-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}