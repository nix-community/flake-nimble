{
  description = ''Smart file/folder creation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-shmk-master.flake = false;
  inputs.src-shmk-master.type = "gitlab";
  inputs.src-shmk-master.owner = "thisNimAgo";
  inputs.src-shmk-master.repo = "mk";
  inputs.src-shmk-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-shmk-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shmk-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-shmk-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}